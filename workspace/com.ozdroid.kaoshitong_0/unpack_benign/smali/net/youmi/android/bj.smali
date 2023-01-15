.class Lnet/youmi/android/bj;
.super Landroid/widget/TableLayout;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/Button;

.field f:Lnet/youmi/android/ao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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


# virtual methods
.method a(Lnet/youmi/android/ao;)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnet/youmi/android/ao;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/youmi/android/bj;->f:Lnet/youmi/android/ao;

    invoke-virtual {p0}, Lnet/youmi/android/bj;->removeAllViews()V

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/ao;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/youmi/android/ao;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bj;->b:Ljava/lang/String;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lnet/youmi/android/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lnet/youmi/android/bj;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/youmi/android/bj;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lnet/youmi/android/bj;->c:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    invoke-virtual {p1}, Lnet/youmi/android/ao;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/youmi/android/bj;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lnet/youmi/android/ao;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lnet/youmi/android/ao;->e()Ljava/lang/String;

    iget-object v3, p0, Lnet/youmi/android/bj;->c:Landroid/widget/EditText;

    new-instance v4, Lnet/youmi/android/bt;

    invoke-direct {v4, p0}, Lnet/youmi/android/bt;-><init>(Lnet/youmi/android/bj;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/bj;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/youmi/android/bj;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/youmi/android/bj;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lnet/youmi/android/bj;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/youmi/android/bj;->e:Landroid/widget/Button;

    iget-object v1, p0, Lnet/youmi/android/bj;->e:Landroid/widget/Button;

    const v3, 0x108004f

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lnet/youmi/android/bj;->e:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    iget-object v1, p0, Lnet/youmi/android/bj;->e:Landroid/widget/Button;

    new-instance v2, Lnet/youmi/android/ch;

    invoke-direct {v2, p0}, Lnet/youmi/android/ch;-><init>(Lnet/youmi/android/bj;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/youmi/android/bj;->e:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/youmi/android/bj;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lnet/youmi/android/bj;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/bj;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/bj;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    return-void
.end method
