.class final Lorg/hermit/android/core/HelpActivity$HelpView;
.super Landroid/widget/LinearLayout;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HelpView"
.end annotation


# instance fields
.field private prevBody:Landroid/view/ViewGroup;

.field final synthetic this$0:Lorg/hermit/android/core/HelpActivity;


# direct methods
.method private constructor <init>(Lorg/hermit/android/core/HelpActivity;III)V
    .locals 11
    .param p2, "level"    # I
    .param p3, "titlesId"    # I
    .param p4, "textsId"    # I

    .prologue
    .line 206
    iput-object p1, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->this$0:Lorg/hermit/android/core/HelpActivity;

    .line 165
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 248
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->prevBody:Landroid/view/ViewGroup;

    .line 166
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lorg/hermit/android/core/HelpActivity$HelpView;->setOrientation(I)V

    .line 168
    invoke-virtual {p0}, Lorg/hermit/android/core/HelpActivity$HelpView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 171
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 172
    .local v7, "titles":Landroid/content/res/TypedArray;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 173
    .local v1, "nTitles":I
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 174
    .local v5, "texts":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 175
    .local v0, "nTexts":I
    if-eq v1, v0, :cond_0

    .line 176
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "HelpActivity: titles and contents arrays must be the same length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 181
    :cond_0
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 182
    .local v6, "title":Landroid/util/TypedValue;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 183
    .local v4, "text":Landroid/util/TypedValue;
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_0
    if-lt v3, v1, :cond_1

    return-void

    .line 184
    :cond_1
    invoke-virtual {v7, v3, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 185
    invoke-virtual {v5, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 186
    iget v8, v6, Landroid/util/TypedValue;->type:I

    iget v9, v4, Landroid/util/TypedValue;->type:I

    if-eq v8, v9, :cond_2

    .line 187
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "HelpActivity: titles and contents values must be the same type (item "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 187
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 190
    :cond_2
    iget v8, v6, Landroid/util/TypedValue;->type:I

    packed-switch v8, :pswitch_data_0

    .line 201
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "HelpActivity: invalid item type (item "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 201
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 192
    :pswitch_1
    iget-object v8, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 193
    invoke-direct {p0, p2, v4}, Lorg/hermit/android/core/HelpActivity$HelpView;->addSimple(ILandroid/util/TypedValue;)V

    .line 183
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0, p2, v6, v4}, Lorg/hermit/android/core/HelpActivity$HelpView;->addSection(ILandroid/util/TypedValue;Landroid/util/TypedValue;)V

    goto :goto_1

    .line 198
    :pswitch_2
    invoke-direct {p0, p2, v6, v4}, Lorg/hermit/android/core/HelpActivity$HelpView;->addSubs(ILandroid/util/TypedValue;Landroid/util/TypedValue;)V

    goto :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic constructor <init>(Lorg/hermit/android/core/HelpActivity;IIILorg/hermit/android/core/HelpActivity$HelpView;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hermit/android/core/HelpActivity$HelpView;-><init>(Lorg/hermit/android/core/HelpActivity;III)V

    return-void
.end method

.method private addSection(ILandroid/util/TypedValue;Landroid/util/TypedValue;)V
    .locals 9
    .param p1, "level"    # I
    .param p2, "title"    # Landroid/util/TypedValue;
    .param p3, "text"    # Landroid/util/TypedValue;

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 222
    new-instance v4, Lorg/hermit/android/core/HelpActivity$BodyView;

    iget-object v1, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->this$0:Lorg/hermit/android/core/HelpActivity;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-direct {v4, v1, v2, v3, v5}, Lorg/hermit/android/core/HelpActivity$BodyView;-><init>(Landroid/app/Activity;ILjava/lang/CharSequence;Lorg/hermit/android/core/HelpActivity$BodyView;)V

    .line 223
    .local v4, "body":Landroid/view/ViewGroup;
    new-instance v0, Lorg/hermit/android/core/HelpActivity$TitleView;

    iget-object v1, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->this$0:Lorg/hermit/android/core/HelpActivity;

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/hermit/android/core/HelpActivity$TitleView;-><init>(Landroid/app/Activity;ILjava/lang/CharSequence;Landroid/view/View;Lorg/hermit/android/core/HelpActivity$TitleView;)V

    .line 225
    .local v0, "head":Landroid/view/ViewGroup;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x6

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 227
    mul-int/lit8 v1, p1, 0x20

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 228
    invoke-virtual {p0, v0, v6}, Lorg/hermit/android/core/HelpActivity$HelpView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4, v6}, Lorg/hermit/android/core/HelpActivity$HelpView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iput-object v4, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->prevBody:Landroid/view/ViewGroup;

    .line 233
    return-void
.end method

.method private addSimple(ILandroid/util/TypedValue;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "text"    # Landroid/util/TypedValue;

    .prologue
    .line 211
    new-instance v0, Lorg/hermit/android/core/HelpActivity$BodyView;

    iget-object v2, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->this$0:Lorg/hermit/android/core/HelpActivity;

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v0, v2, p1, v3, v4}, Lorg/hermit/android/core/HelpActivity$BodyView;-><init>(Landroid/app/Activity;ILjava/lang/CharSequence;Lorg/hermit/android/core/HelpActivity$BodyView;)V

    .line 213
    .local v0, "body":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0, v1}, Lorg/hermit/android/core/HelpActivity$HelpView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iput-object v0, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->prevBody:Landroid/view/ViewGroup;

    .line 217
    return-void
.end method

.method private addSubs(ILandroid/util/TypedValue;Landroid/util/TypedValue;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "title"    # Landroid/util/TypedValue;
    .param p3, "text"    # Landroid/util/TypedValue;

    .prologue
    .line 236
    iget-object v1, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->prevBody:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HelpActivity: sub-sections must be attached to an enclosing section"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    new-instance v0, Lorg/hermit/android/core/HelpActivity$HelpView;

    iget-object v1, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->this$0:Lorg/hermit/android/core/HelpActivity;

    add-int/lit8 v2, p1, 0x1

    iget v3, p2, Landroid/util/TypedValue;->resourceId:I

    iget v4, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/hermit/android/core/HelpActivity$HelpView;-><init>(Lorg/hermit/android/core/HelpActivity;III)V

    .line 243
    .local v0, "body":Landroid/view/ViewGroup;
    iget-object v1, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->prevBody:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iput-object v0, p0, Lorg/hermit/android/core/HelpActivity$HelpView;->prevBody:Landroid/view/ViewGroup;

    .line 245
    return-void
.end method
