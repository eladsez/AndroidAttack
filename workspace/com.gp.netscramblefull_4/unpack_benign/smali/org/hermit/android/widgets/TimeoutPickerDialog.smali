.class public Lorg/hermit/android/widgets/TimeoutPickerDialog;
.super Landroid/app/AlertDialog;
.source "TimeoutPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/widgets/TimeoutPickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final MILLIS:Ljava/lang/String; = "millis"


# instance fields
.field private final mCallback:Lorg/hermit/android/widgets/TimeoutPickerDialog$OnTimeSetListener;

.field private mInitialMillis:J

.field private final mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/hermit/android/widgets/TimeoutPickerDialog$OnTimeSetListener;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lorg/hermit/android/widgets/TimeoutPickerDialog$OnTimeSetListener;
    .param p3, "timeoutMillis"    # J

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mCallback:Lorg/hermit/android/widgets/TimeoutPickerDialog$OnTimeSetListener;

    .line 71
    iput-wide p3, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mInitialMillis:J

    .line 73
    iget-wide v2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mInitialMillis:J

    invoke-direct {p0, v2, v3}, Lorg/hermit/android/widgets/TimeoutPickerDialog;->updateTitle(J)V

    .line 75
    const v2, 0x7f060003

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lorg/hermit/android/widgets/TimeoutPickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 76
    const v2, 0x7f060004

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/hermit/android/widgets/TimeoutPickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    const v2, 0x108009b

    invoke-virtual {p0, v2}, Lorg/hermit/android/widgets/TimeoutPickerDialog;->setIcon(I)V

    .line 80
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030005

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/hermit/android/widgets/TimeoutPickerDialog;->setView(Landroid/view/View;)V

    .line 83
    const v2, 0x7f05001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/hermit/android/widgets/TimeoutPicker;

    iput-object v2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    .line 86
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    iget-wide v3, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mInitialMillis:J

    invoke-virtual {v2, v3, v4}, Lorg/hermit/android/widgets/TimeoutPicker;->setMillis(J)V

    .line 87
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-virtual {v2, p0}, Lorg/hermit/android/widgets/TimeoutPicker;->setOnTimeChangedListener(Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;)V

    .line 88
    return-void
.end method

.method private updateTitle(J)V
    .locals 7
    .param p1, "millis"    # J

    .prologue
    .line 108
    long-to-int v3, p1

    div-int/lit16 v2, v3, 0x3e8

    .line 109
    .local v2, "secs":I
    div-int/lit8 v3, v2, 0x3c

    rem-int/lit8 v1, v3, 0x3c

    .line 110
    .local v1, "mins":I
    div-int/lit16 v3, v2, 0xe10

    rem-int/lit8 v0, v3, 0x64

    .line 111
    .local v0, "hours":I
    rem-int/lit8 v2, v2, 0x3c

    .line 112
    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/hermit/android/widgets/TimeoutPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mCallback:Lorg/hermit/android/widgets/TimeoutPickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-virtual {v0}, Lorg/hermit/android/widgets/TimeoutPicker;->clearFocus()V

    .line 94
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mCallback:Lorg/hermit/android/widgets/TimeoutPickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-virtual {v2}, Lorg/hermit/android/widgets/TimeoutPicker;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/hermit/android/widgets/TimeoutPickerDialog$OnTimeSetListener;->onTimeSet(Lorg/hermit/android/widgets/TimeoutPicker;J)V

    .line 96
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v2, "millis"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 126
    .local v0, "millis":J
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-virtual {v2, v0, v1}, Lorg/hermit/android/widgets/TimeoutPicker;->setMillis(J)V

    .line 127
    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-virtual {v2, p0}, Lorg/hermit/android/widgets/TimeoutPicker;->setOnTimeChangedListener(Lorg/hermit/android/widgets/TimeoutPicker$OnTimeChangedListener;)V

    .line 128
    invoke-direct {p0, v0, v1}, Lorg/hermit/android/widgets/TimeoutPickerDialog;->updateTitle(J)V

    .line 129
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "millis"

    iget-object v2, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-virtual {v2}, Lorg/hermit/android/widgets/TimeoutPicker;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    return-object v0
.end method

.method public onTimeChanged(Lorg/hermit/android/widgets/TimeoutPicker;J)V
    .locals 0
    .param p1, "view"    # Lorg/hermit/android/widgets/TimeoutPicker;
    .param p2, "millis"    # J

    .prologue
    .line 100
    invoke-direct {p0, p2, p3}, Lorg/hermit/android/widgets/TimeoutPickerDialog;->updateTitle(J)V

    .line 101
    return-void
.end method

.method public updateTime(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPickerDialog;->mTimePicker:Lorg/hermit/android/widgets/TimeoutPicker;

    invoke-virtual {v0, p1, p2}, Lorg/hermit/android/widgets/TimeoutPicker;->setMillis(J)V

    .line 105
    return-void
.end method
