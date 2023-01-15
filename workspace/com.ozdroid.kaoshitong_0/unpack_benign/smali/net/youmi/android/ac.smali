.class Lnet/youmi/android/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/youmi/android/u;


# static fields
.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/os/Handler;

.field c:Landroid/content/Context;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0b114c44084b4c5412194b0e10555a4f5804411c4744420055"

    sput-object v0, Lnet/youmi/android/ac;->d:Ljava/lang/String;

    const-string v0, "5d004c140b115e0114501a0a110c58460f5a10074007000212"

    sput-object v0, Lnet/youmi/android/ac;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/ac;->f:Z

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-static {p1}, Lnet/youmi/android/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/youmi/android/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v5, v6

    :goto_0
    if-lt v5, v4, :cond_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    xor-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lnet/youmi/android/ac;Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/youmi/android/ac;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/youmi/android/ac;->f:Z

    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/ce;

    invoke-direct {v1, p0}, Lnet/youmi/android/ce;-><init>(Lnet/youmi/android/ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x51

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/bx;

    invoke-direct {v1, p0, p1, p2}, Lnet/youmi/android/bx;-><init>(Lnet/youmi/android/ac;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x54

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iput-object p2, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    iput-object p1, p0, Lnet/youmi/android/ac;->c:Landroid/content/Context;

    new-instance v0, Lnet/youmi/android/bz;

    invoke-direct {v0, p0, p3, p4}, Lnet/youmi/android/bz;-><init>(Lnet/youmi/android/ac;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc6

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnet/youmi/android/ac;->f:Z

    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/cd;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/cd;-><init>(Lnet/youmi/android/ac;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnet/youmi/android/ac;->f:Z

    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/ca;

    invoke-direct {v1, p0}, Lnet/youmi/android/ca;-><init>(Lnet/youmi/android/ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x53

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ac;->b:Landroid/os/Handler;

    new-instance v1, Lnet/youmi/android/bv;

    invoke-direct {v1, p0, p1, p2}, Lnet/youmi/android/bv;-><init>(Lnet/youmi/android/ac;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/ac;->f:Z

    return v0
.end method
