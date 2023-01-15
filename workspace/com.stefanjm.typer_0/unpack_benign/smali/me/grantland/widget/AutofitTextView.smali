.class public Lme/grantland/widget/AutofitTextView;
.super Landroid/widget/TextView;

# interfaces
.implements Lme/grantland/widget/a$c;


# instance fields
.field private a:Lme/grantland/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lme/grantland/widget/AutofitTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lme/grantland/widget/AutofitTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lme/grantland/widget/AutofitTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p0, p2, p3}, Lme/grantland/widget/a;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lme/grantland/widget/a;->a(Lme/grantland/widget/a$c;)Lme/grantland/widget/a;

    move-result-object p1

    iput-object p1, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    return-void
.end method

.method public getAutofitHelper()Lme/grantland/widget/a;
    .locals 1

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    return-object v0
.end method

.method public getMaxTextSize()F
    .locals 1

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0}, Lme/grantland/widget/a;->c()F

    move-result v0

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0}, Lme/grantland/widget/a;->b()F

    move-result v0

    return v0
.end method

.method public getPrecision()F
    .locals 1

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0}, Lme/grantland/widget/a;->a()F

    move-result v0

    return v0
.end method

.method public setLines(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->a(I)Lme/grantland/widget/a;

    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->a(I)Lme/grantland/widget/a;

    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->b(F)Lme/grantland/widget/a;

    return-void
.end method

.method public setMinTextSize(I)V
    .locals 2

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    int-to-float p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lme/grantland/widget/a;->a(IF)Lme/grantland/widget/a;

    return-void
.end method

.method public setPrecision(F)V
    .locals 1

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->a(F)Lme/grantland/widget/a;

    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 1

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0, p1}, Lme/grantland/widget/a;->a(Z)Lme/grantland/widget/a;

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->a:Lme/grantland/widget/a;

    invoke-virtual {v0, p1, p2}, Lme/grantland/widget/a;->c(IF)V

    :cond_0
    return-void
.end method
