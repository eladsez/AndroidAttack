.class public Lcom/github/angads25/filepicker/widget/MaterialCheckbox;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/RectF;

.field private e:Z

.field private f:Lcom/github/angads25/filepicker/widget/a;

.field private g:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/github/angads25/filepicker/widget/MaterialCheckbox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/github/angads25/filepicker/widget/MaterialCheckbox;)Lcom/github/angads25/filepicker/widget/a;
    .locals 0

    iget-object p0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->f:Lcom/github/angads25/filepicker/widget/a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->e:Z

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->g:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->d:Landroid/graphics/RectF;

    new-instance p1, Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;

    invoke-direct {p1, p0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox$1;-><init>(Lcom/github/angads25/filepicker/widget/MaterialCheckbox;)V

    invoke-virtual {p0, p1}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->e:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    iget v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v4, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v5, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/angads25/filepicker/a$b;->colorAccent:I

    iget-object v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/angads25/filepicker/a$b;->colorAccent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    iget v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v4, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v5, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    const-string v1, "#C1C1C1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v4, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v5, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->getMeasuredWidth()I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    iget v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v4, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v5, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->g:Landroid/graphics/Path;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->g:Landroid/graphics/Path;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->g:Landroid/graphics/Path;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x40300000    # 2.75f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    int-to-float v3, v3

    const/high16 v4, 0x40500000    # 3.25f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->g:Landroid/graphics/Path;

    iget v1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->b:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, p2, p1}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->e:Z

    invoke-virtual {p0}, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->invalidate()V

    return-void
.end method

.method public setOnCheckedChangedListener(Lcom/github/angads25/filepicker/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/angads25/filepicker/widget/MaterialCheckbox;->f:Lcom/github/angads25/filepicker/widget/a;

    return-void
.end method
