.class public Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;
.super Ljava/lang/Object;
.source "SwitchTestDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private context:Landroid/content/Context;

.field private dlg:Landroid/app/Dialog;

.field private factory:Landroid/view/LayoutInflater;

.field private handler:Lcom/ozdroid/kaoshitong/ui/SwithTestListener;

.field private mClose:Landroid/widget/Button;

.field private mMax:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSubmit:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->context:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->factory:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public Create(Lcom/ozdroid/kaoshitong/ui/SwithTestListener;III)V
    .locals 4
    .param p1, "handler"    # Lcom/ozdroid/kaoshitong/ui/SwithTestListener;
    .param p2, "index"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->handler:Lcom/ozdroid/kaoshitong/ui/SwithTestListener;

    .line 33
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->context:Landroid/content/Context;

    const/high16 v3, 0x7f070000

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->dlg:Landroid/app/Dialog;

    .line 34
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->factory:Landroid/view/LayoutInflater;

    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "menuView":Landroid/view/View;
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->dlg:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->dlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 39
    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mMax:Landroid/widget/TextView;

    .line 40
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mMax:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mMax:Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mMax:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mSeekBar:Landroid/widget/SeekBar;

    .line 46
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 47
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 48
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 50
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mSubmit:Landroid/widget/Button;

    .line 51
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mClose:Landroid/widget/Button;

    .line 54
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mClose:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->handler:Lcom/ozdroid/kaoshitong/ui/SwithTestListener;

    .line 78
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mSubmit:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->handler:Lcom/ozdroid/kaoshitong/ui/SwithTestListener;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 62
    .local v0, "theindex":I
    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 65
    :cond_0
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->handler:Lcom/ozdroid/kaoshitong/ui/SwithTestListener;

    invoke-interface {v1, v0}, Lcom/ozdroid/kaoshitong/ui/SwithTestListener;->OnSubmitClick(I)V

    .line 68
    .end local v0    # "theindex":I
    :cond_1
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->dismiss()V

    .line 74
    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mClose:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->dismiss()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    const/4 p2, 0x1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/SwitchTestDlg;->mMax:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 93
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 99
    return-void
.end method
