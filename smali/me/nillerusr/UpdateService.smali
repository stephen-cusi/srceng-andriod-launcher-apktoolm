.class public Lme/nillerusr/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# static fields
.field static service_work:Z


# instance fields
.field extras:Landroid/os/Bundle;

.field nm:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lme/nillerusr/UpdateService;->service_work:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private sendNotif()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 42
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f020001

    const-string v4, "Update avalible"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v3, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 43
    .local v1, "notif":Landroid/app/Notification;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lme/nillerusr/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030004

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lme/nillerusr/UpdateService;->extras:Landroid/os/Bundle;

    const-string v5, "update_url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 48
    .local v2, "pIntent":Landroid/app/PendingIntent;
    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 49
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 50
    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 51
    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 52
    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 53
    iget v3, v1, Landroid/app/Notification;->priority:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->priority:I

    .line 55
    iget-object v3, p0, Lme/nillerusr/UpdateService;->nm:Landroid/app/NotificationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lme/nillerusr/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lme/nillerusr/UpdateService;->nm:Landroid/app/NotificationManager;

    .line 26
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 29
    sget-boolean v0, Lme/nillerusr/UpdateService;->service_work:Z

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lme/nillerusr/UpdateService;->service_work:Z

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lme/nillerusr/UpdateService;->extras:Landroid/os/Bundle;

    .line 34
    invoke-direct {p0}, Lme/nillerusr/UpdateService;->sendNotif()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method
