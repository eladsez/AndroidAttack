.class public Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;
.super Landroid/app/Activity;
.source "PaintActivity.java"


# instance fields
.field private final me:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-object p0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->me:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->me:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    const/16 v10, 0xb4

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v8

    .line 45
    .local v8, "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    move-result-object v6

    .line 47
    .local v6, "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    const-string v0, "CONTROLS_ORIENTATION"

    invoke-virtual {v6, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->setContentView(I)V

    .line 53
    :goto_0
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;

    .line 54
    .local v2, "paintView":Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 55
    .local v5, "cleanBtn":Landroid/widget/ImageButton;
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$1;

    invoke-direct {v0, p0, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 63
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 64
    .local v9, "zoomScaleImg":Landroid/widget/ImageView;
    const v0, 0x7f02000d

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 66
    invoke-virtual {v2, v9}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;->setZoomScaleImg(Landroid/widget/ImageView;)V

    .line 68
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 69
    .local v4, "inputModeBtn":Landroid/widget/ImageButton;
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;

    invoke-direct {v0, p0, v2, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$2;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;Landroid/widget/ImageButton;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 90
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 91
    .local v3, "rwModeBtn":Landroid/widget/ImageButton;
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$3;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v3, v10}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 113
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 114
    .local v7, "saveBtn":Landroid/widget/ImageButton;
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$4;

    invoke-direct {v0, p0, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity$4;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 124
    return-void

    .line 50
    .end local v2    # "paintView":Lcom/blogspot/mvnblogbuild/fingernotes/controls/PaintView;
    .end local v3    # "rwModeBtn":Landroid/widget/ImageButton;
    .end local v4    # "inputModeBtn":Landroid/widget/ImageButton;
    .end local v5    # "cleanBtn":Landroid/widget/ImageButton;
    .end local v7    # "saveBtn":Landroid/widget/ImageButton;
    .end local v9    # "zoomScaleImg":Landroid/widget/ImageView;
    :cond_0
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/PaintActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 29
    .local v0, "textInput":Landroid/widget/EditText;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 31
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 32
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 35
    :cond_0
    return-void
.end method
