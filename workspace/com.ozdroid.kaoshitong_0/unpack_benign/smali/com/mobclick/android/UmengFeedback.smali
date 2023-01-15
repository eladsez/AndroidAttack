.class public Lcom/mobclick/android/UmengFeedback;
.super Landroid/app/Activity;


# static fields
.field private static e:Lcom/mobclick/android/e;

.field private static f:Landroid/content/Context;


# instance fields
.field private a:Landroid/widget/Spinner;

.field private b:Landroid/widget/Spinner;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "error"

    iput-object v0, p0, Lcom/mobclick/android/UmengFeedback;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "getIdByReflection error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobclick/android/UmengFeedback;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/mobclick/android/UmengFeedback;->a:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic a()Lcom/mobclick/android/e;
    .locals 1

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->e:Lcom/mobclick/android/e;

    return-object v0
.end method

.method private a(IILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "age"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "gender"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mobclick/android/UmengFeedback;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobclick/android/UmengFeedback;IILjava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/mobclick/android/UmengFeedback;->a(IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mobclick/android/UmengFeedback;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclick/android/UmengFeedback;->g:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Lcom/mobclick/android/e;)V
    .locals 0

    sput-object p0, Lcom/mobclick/android/UmengFeedback;->e:Lcom/mobclick/android/e;

    return-void
.end method

.method static synthetic b(Lcom/mobclick/android/UmengFeedback;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/mobclick/android/UmengFeedback;->b:Landroid/widget/Spinner;

    return-object v0
.end method

.method private b()V
    .locals 3

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "feedback_umeng_title"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mobclick/android/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "feedback_title"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mobclick/android/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "feedback_submit"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p0}, Lcom/mobclick/android/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/mobclick/android/UmengFeedback;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/mobclick/android/UmengFeedback;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/mobclick/android/UmengFeedback;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/mobclick/android/UmengFeedback;->g:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/16 v4, 0x87

    const/16 v7, 0x5a

    const/16 v5, 0x34

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/mobclick/android/UmengFeedback;->requestWindowFeature(I)Z

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "umeng_feedback"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->setContentView(I)V

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "umengBannerTop"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x4

    new-array v3, v3, [I

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v6

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v8

    const/4 v4, 0x2

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/mobclick/android/UmengFeedback;->b()V

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "feedback_content"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mobclick/android/UmengFeedback;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mobclick/android/UmengFeedback;->c:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/mobclick/android/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "feedback_age_spinner"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mobclick/android/UmengFeedback;->a:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-static {p0}, Lcom/mobclick/android/k;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/mobclick/android/UmengFeedback;->a:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "feedback_gender_spinner"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mobclick/android/UmengFeedback;->b:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-static {p0}, Lcom/mobclick/android/k;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/mobclick/android/UmengFeedback;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sget-object v0, Lcom/mobclick/android/UmengFeedback;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "feedback_submit"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclick/android/UmengFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/mobclick/android/l;

    invoke-direct {v1, p0}, Lcom/mobclick/android/l;-><init>(Lcom/mobclick/android/UmengFeedback;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
