.class public Lnet/sharpspot/dinnerin/CustomDialog$Builder;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private showProgress:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lnet/sharpspot/dinnerin/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lnet/sharpspot/dinnerin/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lnet/sharpspot/dinnerin/CustomDialog;
    .locals 13

    .prologue
    const v12, 0x7f050011

    const/4 v11, -0x1

    const v10, 0x7f050014

    const v9, 0x7f050013

    const/16 v8, 0x8

    .line 185
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 187
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lnet/sharpspot/dinnerin/CustomDialog;

    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->context:Landroid/content/Context;

    const v7, 0x7f0a000c

    invoke-direct {v0, v6, v7}, Lnet/sharpspot/dinnerin/CustomDialog;-><init>(Landroid/content/Context;I)V

    .line 189
    .local v0, "dialog":Lnet/sharpspot/dinnerin/CustomDialog;
    const v6, 0x7f030002

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, "layout":Landroid/view/View;
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->title:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 194
    const v6, 0x7f05000d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_0
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 205
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v7, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_0

    .line 208
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lnet/sharpspot/dinnerin/CustomDialog$Builder$1;

    invoke-direct {v7, p0, v0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder$1;-><init>(Lnet/sharpspot/dinnerin/CustomDialog$Builder;Lnet/sharpspot/dinnerin/CustomDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->showProgress:Z

    if-nez v6, :cond_1

    .line 225
    const v6, 0x7f05000f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_1
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 230
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v7, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_2

    .line 233
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lnet/sharpspot/dinnerin/CustomDialog$Builder$2;

    invoke-direct {v7, p0, v0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder$2;-><init>(Lnet/sharpspot/dinnerin/CustomDialog$Builder;Lnet/sharpspot/dinnerin/CustomDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_2
    :goto_2
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-nez v6, :cond_3

    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 251
    const v6, 0x7f050012

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_3
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->message:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 257
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 258
    const v6, 0x7f050010

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_4
    :goto_3
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lnet/sharpspot/dinnerin/CustomDialog;->setCancelable(Z)V

    .line 287
    invoke-virtual {v0, v2}, Lnet/sharpspot/dinnerin/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 289
    return-object v0

    .line 199
    :cond_5
    const v6, 0x7f05000c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 221
    :cond_6
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 245
    :cond_7
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 260
    :cond_8
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 262
    const/4 v3, 0x0

    .line 264
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->contentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/ListView;

    if-eqz v6, :cond_9

    .line 268
    iget-object v6, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 269
    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 275
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit16 v6, v6, -0xfa

    invoke-direct {v3, v11, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 282
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "wm":Landroid/view/WindowManager;
    .restart local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_4
    const v6, 0x7f05000e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->contentView:Landroid/view/View;

    invoke-virtual {v6, v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 278
    :cond_9
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x2

    invoke-direct {v3, v11, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_4
.end method

.method public setMessage(I)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->message:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->message:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 161
    iget-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 175
    iput-object p1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 133
    iget-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 147
    iput-object p1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 149
    return-object p0
.end method

.method public setShowProgress(Z)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 0
    .param p1, "showProgress"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->showProgress:Z

    .line 60
    return-object p0
.end method

.method public setTitle(I)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->title:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->title:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iput-object p1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->contentView:Landroid/view/View;

    .line 121
    return-object p0
.end method
