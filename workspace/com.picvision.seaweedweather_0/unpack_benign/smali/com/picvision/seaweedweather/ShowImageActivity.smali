.class public Lcom/picvision/seaweedweather/ShowImageActivity;
.super Landroid/app/Activity;
.source "ShowImageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/picvision/seaweedweather/ShowImageActivity;->requestWindowFeature(I)Z

    .line 39
    const v9, 0x7f03000b

    invoke-virtual {p0, v9}, Lcom/picvision/seaweedweather/ShowImageActivity;->setContentView(I)V

    .line 40
    const v9, 0x7f090033

    invoke-virtual {p0, v9}, Lcom/picvision/seaweedweather/ShowImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 41
    .local v5, "show_img":Landroid/widget/ImageView;
    const v9, 0x7f090034

    invoke-virtual {p0, v9}, Lcom/picvision/seaweedweather/ShowImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 42
    .local v6, "show_text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/ShowImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 43
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 44
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/ShowImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/ShowImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 47
    .local v1, "from":Landroid/os/Bundle;
    const-string v9, "img_url"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 48
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/ShowImageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 50
    .local v3, "manager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 51
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 52
    .local v7, "wHeight":I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 54
    .local v8, "wWidth":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 55
    .local v4, "paint":Landroid/graphics/Paint;
    div-int/lit8 v9, v8, 0x12

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    const-string v9, "Text"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v8}, Lcom/picvision/seaweedweather/utils/Util;->getTextString(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    new-instance v9, Lcom/picvision/seaweedweather/ShowImageActivity$1;

    invoke-direct {v9, p0}, Lcom/picvision/seaweedweather/ShowImageActivity$1;-><init>(Lcom/picvision/seaweedweather/ShowImageActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v9, Lcom/picvision/seaweedweather/ShowImageActivity$2;

    invoke-direct {v9, p0}, Lcom/picvision/seaweedweather/ShowImageActivity$2;-><init>(Lcom/picvision/seaweedweather/ShowImageActivity;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method
