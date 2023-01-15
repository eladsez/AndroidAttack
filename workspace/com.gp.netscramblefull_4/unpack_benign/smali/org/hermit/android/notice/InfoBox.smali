.class public Lorg/hermit/android/notice/InfoBox;
.super Landroid/app/Dialog;
.source "InfoBox.java"


# static fields
.field public static final BUTTON_1:I = 0x1

.field public static final BUTTON_2:I = 0x2


# instance fields
.field private buttonHolder:Landroid/widget/LinearLayout;

.field private buttonLabel:I

.field private buttonLinks:[I

.field private parentApp:Landroid/app/Activity;

.field private resources:Landroid/content/res/Resources;

.field private subtitleBar:Landroid/widget/ImageView;

.field private subtitleView:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 69
    const/high16 v0, 0x7f060000

    invoke-direct {p0, p1, v0}, Lorg/hermit/android/notice/InfoBox;-><init>(Landroid/app/Activity;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "button"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object p1, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lorg/hermit/android/notice/InfoBox;->resources:Landroid/content/res/Resources;

    .line 83
    iput p2, p0, Lorg/hermit/android/notice/InfoBox;->buttonLabel:I

    .line 84
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/hermit/android/notice/InfoBox;->buttonLinks:[I

    .line 87
    invoke-direct {p0}, Lorg/hermit/android/notice/InfoBox;->createDialog()Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/hermit/android/notice/InfoBox;->setContentView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method private createDialog()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x6

    const/4 v7, -0x1

    const/4 v8, -0x2

    .line 96
    const/4 v1, -0x2

    .line 97
    .local v1, "WCON":I
    const/4 v0, -0x1

    .line 100
    .local v0, "FPAR":I
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 106
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/hermit/android/notice/InfoBox;->subtitleView:Landroid/widget/TextView;

    .line 107
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->subtitleView:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->subtitleView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->subtitleView:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/hermit/android/notice/InfoBox;->subtitleBar:Landroid/widget/ImageView;

    .line 112
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->subtitleBar:Landroid/widget/ImageView;

    const v6, 0x1080015

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->subtitleBar:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->subtitleBar:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v4, Landroid/widget/ScrollView;

    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v4, "tscroll":Landroid/widget/ScrollView;
    invoke-virtual {v4, v10}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 120
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    .line 127
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 130
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 134
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    .line 135
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    const v6, 0xf08080

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 136
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 138
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    .line 139
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v2, Landroid/widget/Button;

    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 143
    .local v2, "but":Landroid/widget/Button;
    iget v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonLabel:I

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 144
    new-instance v5, Lorg/hermit/android/notice/InfoBox$1;

    invoke-direct {v5, p0}, Lorg/hermit/android/notice/InfoBox$1;-><init>(Lorg/hermit/android/notice/InfoBox;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-object v3
.end method


# virtual methods
.method protected linkButtonPressed(I)V
    .locals 5
    .param p1, "which"    # I

    .prologue
    .line 286
    const/4 v3, 0x1

    if-lt p1, v3, :cond_0

    iget-object v3, p0, Lorg/hermit/android/notice/InfoBox;->buttonLinks:[I

    array-length v3, v3

    if-lt p1, v3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v3, p0, Lorg/hermit/android/notice/InfoBox;->buttonLinks:[I

    aget v0, v3, p1

    .line 290
    .local v0, "URLId":I
    iget-object v3, p0, Lorg/hermit/android/notice/InfoBox;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "URLText":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 292
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 291
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    .local v2, "myIntent":Landroid/content/Intent;
    iget-object v3, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected okButtonPressed()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/hermit/android/notice/InfoBox;->dismiss()V

    .line 275
    return-void
.end method

.method public setLinkButton(III)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "label"    # I
    .param p3, "link"    # I

    .prologue
    const/4 v6, -0x2

    .line 170
    const/4 v0, -0x2

    .line 173
    .local v0, "WCON":I
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 174
    .local v2, "count":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-le v3, p1, :cond_0

    .line 191
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 192
    .local v1, "but":Landroid/widget/Button;
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 193
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonLinks:[I

    aput p3, v5, p1

    .line 194
    return-void

    .line 175
    .end local v1    # "but":Landroid/widget/Button;
    :cond_0
    new-instance v1, Landroid/widget/Button;

    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->parentApp:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 176
    .restart local v1    # "but":Landroid/widget/Button;
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setId(I)V

    .line 177
    new-instance v5, Lorg/hermit/android/notice/InfoBox$2;

    invoke-direct {v5, p0}, Lorg/hermit/android/notice/InfoBox$2;-><init>(Lorg/hermit/android/notice/InfoBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 187
    iget-object v5, p0, Lorg/hermit/android/notice/InfoBox;->buttonHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 203
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/hermit/android/notice/InfoBox;->setSubtitle(Ljava/lang/String;)V

    .line 204
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 213
    if-nez p1, :cond_0

    .line 214
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->subtitleBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->subtitleBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    invoke-virtual {p0}, Lorg/hermit/android/notice/InfoBox;->show()V

    .line 251
    return-void
.end method

.method public show(II)V
    .locals 1
    .param p1, "title"    # I
    .param p2, "text"    # I

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lorg/hermit/android/notice/InfoBox;->setTitle(I)V

    .line 237
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 238
    invoke-virtual {p0}, Lorg/hermit/android/notice/InfoBox;->show()V

    .line 239
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lorg/hermit/android/notice/InfoBox;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p0}, Lorg/hermit/android/notice/InfoBox;->show()V

    .line 263
    return-void
.end method
