.class Lnet/youmi/android/o;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I

.field static g:I

.field static h:I

.field static i:I

.field static j:I

.field static k:Z

.field static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x1e0

    const/16 v1, 0x140

    const/4 v0, 0x0

    sput v1, Lnet/youmi/android/o;->a:I

    sput v2, Lnet/youmi/android/o;->b:I

    sput v1, Lnet/youmi/android/o;->c:I

    sput v2, Lnet/youmi/android/o;->d:I

    sput v0, Lnet/youmi/android/o;->e:I

    sput v0, Lnet/youmi/android/o;->f:I

    sput v0, Lnet/youmi/android/o;->g:I

    sput v0, Lnet/youmi/android/o;->h:I

    sput v0, Lnet/youmi/android/o;->i:I

    sput v0, Lnet/youmi/android/o;->j:I

    sput-boolean v0, Lnet/youmi/android/o;->k:Z

    const-string v0, "0359204502517f2316154f427a024269"

    sput-object v0, Lnet/youmi/android/o;->l:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)F
    .locals 1

    const/16 v0, 0x26

    if-gt p0, v0, :cond_0

    const v0, 0x41333333    # 11.2f

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x30

    if-gt p0, v0, :cond_1

    const v0, 0x41499999    # 12.599999f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0
.end method

.method static a()I
    .locals 2

    sget v0, Lnet/youmi/android/o;->c:I

    sget v1, Lnet/youmi/android/o;->d:I

    if-lt v0, v1, :cond_0

    sget v0, Lnet/youmi/android/o;->d:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lnet/youmi/android/o;->c:I

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)I
    .locals 1

    sget v0, Lnet/youmi/android/o;->a:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/o;->d(Landroid/content/Context;)I

    :cond_0
    sget v0, Lnet/youmi/android/o;->a:I

    return v0
.end method

.method static b(I)I
    .locals 1

    const/4 v0, 0x4

    sparse-switch p0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x30 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static b(Landroid/content/Context;)I
    .locals 1

    sget v0, Lnet/youmi/android/o;->c:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/o;->d(Landroid/content/Context;)I

    :cond_0
    sget v0, Lnet/youmi/android/o;->c:I

    return v0
.end method

.method public static c(I)I
    .locals 2

    sget v0, Lnet/youmi/android/o;->b:I

    if-gt p0, v0, :cond_0

    move v0, p0

    :goto_0
    if-le p0, v0, :cond_3

    :goto_1
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x26

    :goto_2
    return v0

    :cond_0
    sget v0, Lnet/youmi/android/o;->b:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x140

    if-gt v0, v1, :cond_2

    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    const/16 v0, 0x40

    goto :goto_2

    :cond_3
    move v0, p0

    goto :goto_1
.end method

.method static c(Landroid/content/Context;)I
    .locals 1

    sget v0, Lnet/youmi/android/o;->d:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/o;->d(Landroid/content/Context;)I

    :cond_0
    sget v0, Lnet/youmi/android/o;->d:I

    return v0
.end method

.method static d(Landroid/content/Context;)I
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lnet/youmi/android/o;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/youmi/android/o;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lnet/youmi/android/o;->k:Z

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_2

    const/16 v0, 0x140

    sput v0, Lnet/youmi/android/o;->a:I

    const/16 v0, 0x1e0

    sput v0, Lnet/youmi/android/o;->b:I

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/o;->h:I

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/o;->g:I

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/o;->e:I

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/o;->f:I

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/o;->j:I

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/o;->i:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lnet/youmi/android/o;->b:I

    sput v1, Lnet/youmi/android/o;->a:I

    sput v1, Lnet/youmi/android/o;->c:I

    sput v0, Lnet/youmi/android/o;->d:I

    if-le v1, v0, :cond_1

    sget v0, Lnet/youmi/android/o;->c:I

    sget v1, Lnet/youmi/android/o;->d:I

    sput v1, Lnet/youmi/android/o;->c:I

    sput v0, Lnet/youmi/android/o;->d:I

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lnet/youmi/android/o;->h:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    sput v0, Lnet/youmi/android/o;->g:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sput v1, Lnet/youmi/android/o;->f:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    sput v1, Lnet/youmi/android/o;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sget v2, Lnet/youmi/android/o;->h:I

    sub-int/2addr v1, v2

    sput v1, Lnet/youmi/android/o;->j:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sput v0, Lnet/youmi/android/o;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sput-boolean v3, Lnet/youmi/android/o;->k:Z

    invoke-static {}, Lnet/youmi/android/o;->a()I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sput-boolean v3, Lnet/youmi/android/o;->k:Z

    goto :goto_1
.end method
