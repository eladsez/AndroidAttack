.class Lnet/youmi/android/c;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:Landroid/widget/LinearLayout$LayoutParams;

.field static final c:Landroid/widget/LinearLayout$LayoutParams;

.field static final d:Landroid/widget/LinearLayout$LayoutParams;

.field static final e:Landroid/widget/LinearLayout$LayoutParams;

.field static final f:Landroid/widget/LinearLayout$LayoutParams;

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/16 v0, 0x26

    const/16 v1, 0x76

    const/16 v2, 0xa6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lnet/youmi/android/c;->a:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lnet/youmi/android/c;->b:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lnet/youmi/android/c;->c:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lnet/youmi/android/c;->e:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lnet/youmi/android/c;->f:Landroid/widget/LinearLayout$LayoutParams;

    const-string v0, "5047020c035e433d015b6641755941170d03"

    sput-object v0, Lnet/youmi/android/c;->g:Ljava/lang/String;

    const-string v0, "0b0f114851455a574252480b410c0816575712561205525411"

    sput-object v0, Lnet/youmi/android/c;->h:Ljava/lang/String;

    const-string v0, "594d11460f191651461c4d5d160f0d1c0856401a505105534011"

    sput-object v0, Lnet/youmi/android/c;->i:Ljava/lang/String;

    const-string v0, "594011160a1c1d05141e4a5e175c0b190d5c45174740105953"

    sput-object v0, Lnet/youmi/android/c;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lnet/youmi/android/bl;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/youmi/android/bl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x112

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/bl;Landroid/graphics/Bitmap;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10f

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/bl;Landroid/os/Handler;Landroid/graphics/Bitmap;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    sget-object v2, Lnet/youmi/android/c;->b:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v2, Lnet/youmi/android/c;->c:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/16 v6, 0xc

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, p1}, Lnet/youmi/android/c;->a(Landroid/content/Context;Lnet/youmi/android/bl;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-static {p0, p1, p3}, Lnet/youmi/android/c;->a(Landroid/content/Context;Lnet/youmi/android/bl;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-static {p0, p1}, Lnet/youmi/android/c;->b(Landroid/content/Context;Lnet/youmi/android/bl;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-static {p0, p1, v0}, Lnet/youmi/android/c;->a(Landroid/content/Context;Lnet/youmi/android/bl;Ljava/lang/StringBuilder;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-static {p0, p1, v0, p2}, Lnet/youmi/android/c;->a(Landroid/content/Context;Lnet/youmi/android/bl;Ljava/lang/StringBuilder;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-static {p0, p1, v0}, Lnet/youmi/android/c;->b(Landroid/content/Context;Lnet/youmi/android/bl;Ljava/lang/StringBuilder;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-static {p0, p1, v0}, Lnet/youmi/android/c;->c(Landroid/content/Context;Lnet/youmi/android/bl;Ljava/lang/StringBuilder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    invoke-static {p0, p1}, Lnet/youmi/android/c;->c(Landroid/content/Context;Lnet/youmi/android/bl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10e

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v8

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Lnet/youmi/android/bl;Ljava/lang/StringBuilder;)Landroid/view/View;
    .locals 23

    if-nez p1, :cond_0

    const/16 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/bl;->f()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/bl;->k()Lnet/youmi/android/ar;

    move-result-object v6

    if-eqz v6, :cond_e

    :cond_1
    const/high16 v6, -0x1000000

    const/16 v7, 0xbd

    const/16 v8, 0xde

    const/16 v9, 0xe8

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    new-instance v9, Landroid/widget/LinearLayout;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/bl;->f()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v10

    if-eqz v10, :cond_d

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/bl;->f()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    new-instance v10, Landroid/widget/TextView;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v11, -0x1

    sget v12, Lnet/youmi/android/c;->a:I

    const/high16 v13, 0x41880000    # 17.0f

    const-string v14, "\u8054\u7cfb\u65b9\u5f0f"

    invoke-static {v10, v11, v12, v13, v14}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v11, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const/4 v10, 0x1

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/bl;->f()Ljava/util/ArrayList;

    move-result-object v11

    new-instance v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "\u8054\u7cfb\u7535\u8bdd"

    invoke-static {v5, v6, v7, v8, v12}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    sget-object v12, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v9, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    move v12, v5

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-lt v12, v5, :cond_7

    move/from16 p2, v10

    :goto_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/bl;->k()Lnet/youmi/android/ar;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/bl;->k()Lnet/youmi/android/ar;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object p1

    if-nez p2, :cond_2

    :try_start_5
    new-instance p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, -0x1

    sget v10, Lnet/youmi/android/c;->a:I

    const/high16 v11, 0x41880000    # 17.0f

    const-string v12, "\u8054\u7cfb\u65b9\u5f0f"

    move-object/from16 v0, p2

    move v1, v5

    move v2, v10

    move v3, v11

    move-object v4, v12

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    sget-object v5, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_3
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/ar;->d()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u4f20\u771f"

    move-object/from16 v0, p2

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    sget-object v5, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, -0x1000000

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/ar;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lnet/youmi/android/c;->b:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_4
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/ar;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "MSN"

    move-object/from16 v0, p2

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    sget-object v5, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TableRow;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, -0x1000000

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/ar;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    sget-object v5, Lnet/youmi/android/c;->b:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_5
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/ar;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "QQ"

    move-object/from16 v0, p2

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    sget-object v5, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, -0x1000000

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/ar;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lnet/youmi/android/c;->b:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :cond_5
    :goto_6
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/ar;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "Email"

    move-object/from16 v0, p2

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    sget-object v5, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p0, -0x1000000

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/ar;->c()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lnet/youmi/android/c;->b:Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :cond_6
    :goto_7
    move-object/from16 p0, v9

    goto/16 :goto_0

    :cond_7
    :try_start_a
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/youmi/android/ap;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lnet/youmi/android/ap;->a()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-virtual {v5}, Lnet/youmi/android/ap;->a()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    new-instance v13, Landroid/widget/RelativeLayout;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/TextView;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v15, -0x1000000

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5}, Lnet/youmi/android/ap;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lnet/youmi/android/ap;->b()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v18, 0x9

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v18, 0x1

    const/16 v19, 0x2

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Lnet/youmi/android/ap;->c()I

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    invoke-virtual {v5}, Lnet/youmi/android/ap;->c()I

    move-result v17

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    :cond_8
    new-instance v14, Landroid/widget/TextView;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v17, "<a href=\'#\'>"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, "\u62e8\u6253\u7535\u8bdd"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, "</a>"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v17, Lnet/youmi/android/bf;

    move-object/from16 v0, v17

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/bf;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v17, 0x1

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v18, 0xc

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    invoke-virtual {v5}, Lnet/youmi/android/ap;->c()I

    move-result v14

    const/16 v17, 0x2

    move v0, v14

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    invoke-virtual {v5}, Lnet/youmi/android/ap;->c()I

    move-result v5

    const/4 v14, 0x3

    if-ne v5, v14, :cond_a

    :cond_9
    new-instance v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move-object/from16 v0, p2

    move v1, v14

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v14, "<a href=\'#\'>"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\u53d1\u9001\u77ed\u4fe1"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "</a>"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v14, Lnet/youmi/android/ba;

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x1

    move-object v0, v14

    move v1, v15

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v13, v5, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    sget-object v5, Lnet/youmi/android/c;->b:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v9, v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_9
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto/16 :goto_1

    :cond_c
    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v5

    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0x118

    invoke-static {v5, v13}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_9

    :catch_1
    move-exception p2

    move v5, v10

    :goto_a
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v10, 0x119

    move-object/from16 v0, p2

    move v1, v10

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_d
    move/from16 p2, v5

    goto/16 :goto_2

    :catch_2
    move-exception p2

    :try_start_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x11a

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception p0

    :try_start_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x11f

    invoke-static/range {p0 .. p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x120

    invoke-static/range {p0 .. p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :cond_e
    const/16 p0, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception p2

    :try_start_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x11b

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    :catch_6
    move-exception p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x11c

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto/16 :goto_5

    :catch_7
    move-exception p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x11d

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto/16 :goto_6

    :catch_8
    move-exception p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x11e

    invoke-static/range {p0 .. p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_7

    :catch_9
    move-exception p2

    goto :goto_a
.end method

.method private static a(Landroid/content/Context;Lnet/youmi/android/bl;Ljava/lang/StringBuilder;Landroid/os/Handler;)Landroid/view/View;
    .locals 12

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/youmi/android/bl;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lnet/youmi/android/c;->e:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v0, Lnet/youmi/android/c;->f:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Lnet/youmi/android/bl;->h()Ljava/util/ArrayList;

    move-result-object v8

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    sget v1, Lnet/youmi/android/c;->a:I

    const/high16 v2, 0x41880000    # 17.0f

    const-string v3, "\u8054\u7cfb\u5730\u5740"

    invoke-static {p1, v0, v1, v2, v3}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    move v9, p1

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v9, p1, :cond_1

    const/16 p0, 0x11

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object p0, v7

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/youmi/android/aw;

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lnet/youmi/android/aw;->e()Ljava/lang/String;

    move-result-object v4

    const/high16 v0, -0x1000000

    const/high16 v1, 0x41680000    # 14.5f

    invoke-static {v10, v0, v1, v4}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IFLjava/lang/String;)V

    invoke-virtual {p1}, Lnet/youmi/android/aw;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/youmi/android/aw;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lnet/youmi/android/aw;->b()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v0, "<a href=\'#\'>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u67e5\u770b\u5730\u56fe"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</a>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lnet/youmi/android/aw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lnet/youmi/android/ay;

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/ay;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lnet/youmi/android/c;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v10, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lnet/youmi/android/c;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v11, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 p1, v9, 0x1

    move v9, p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x123

    invoke-static {p1, v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x124

    invoke-static {p0, p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :cond_2
    const/4 p0, 0x0

    goto/16 :goto_0
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

.method private static a(Landroid/widget/TextView;IFLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(Landroid/widget/TextView;IIFLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lnet/youmi/android/bl;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lnet/youmi/android/bl;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x113

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v4

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lnet/youmi/android/bl;Ljava/lang/StringBuilder;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->g()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v10

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/youmi/android/bl;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v10

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnet/youmi/android/bl;->g()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    sget v4, Lnet/youmi/android/c;->a:I

    const/high16 v5, 0x41880000    # 17.0f

    const-string v6, "\u4e0b\u8f7d\u5730\u5740"

    invoke-static {v0, v3, v4, v5, v6}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v3, v7

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lt v3, v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/bq;

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v4, "<a href=\'#\'>"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/youmi/android/bq;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</a>"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lnet/youmi/android/bq;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v5, v4, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Lnet/youmi/android/bc;

    invoke-direct {v4, v6, p0, v0}, Lnet/youmi/android/bc;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lnet/youmi/android/c;->c:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x127

    invoke-static {v0, v4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x128

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v10

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;Lnet/youmi/android/bl;)Landroid/view/View;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->j()Lnet/youmi/android/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/bl;->j()Lnet/youmi/android/ao;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/bj;

    invoke-direct {v1, p0}, Lnet/youmi/android/bj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lnet/youmi/android/bj;->a(Lnet/youmi/android/ao;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lnet/youmi/android/bl;Ljava/lang/StringBuilder;)Landroid/view/View;
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/bl;->i()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/youmi/android/bl;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    sget v3, Lnet/youmi/android/c;->a:I

    const/high16 v4, 0x41880000    # 17.0f

    const-string v5, "\u66f4\u591a"

    invoke-static {v0, v2, v3, v4, v5}, Lnet/youmi/android/c;->a(Landroid/widget/TextView;IIFLjava/lang/String;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v2, Lnet/youmi/android/c;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lnet/youmi/android/bl;->i()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v6

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lt v3, v0, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/ci;

    if-eqz v0, :cond_1

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v5, "<a href=\'#\'>"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/youmi/android/ci;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</a>"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v5, Lnet/youmi/android/c;->c:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lnet/youmi/android/ci;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lnet/youmi/android/ci;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lnet/youmi/android/bb;

    invoke-direct {v6, v5, p0, v0}, Lnet/youmi/android/bb;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x12b

    invoke-static {v0, v4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
