.class public final Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# interfaces
.implements Landroid/pim/vcard/VCardComposer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerForOutputStream"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer.HandlerForOutputStream"



# instance fields
.field private mOnTerminateIsCalled:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mWriter:Ljava/io/Writer;

.field final synthetic this$0:Landroid/pim/vcard/VCardComposer;



# direct methods
.method public constructor <init>(Landroid/pim/vcard/VCardComposer;Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter "outputStream"

    .prologue
    .line 176
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    .line 177
    iput-object p2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 178
    return-void
.end method


# virtual methods
.method public closeOutputStream()V
    .registers 4

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 251
    :goto_5
    return-void

    .line 248
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Ljava/io/IOException;
    const-string v1, "VCardComposer.HandlerForOutputStream"

    const-string v2, "IOException is thrown during close(). Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public finalize()V
    .registers 2

    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    if-nez v0, :cond_7

    .line 256
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->onTerminate()V

    .line 258
    :cond_7
    return-void
.end method

.method public onEntryCreated(Ljava/lang/String;)Z
    .registers 6
    .parameter "vcard"

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 220
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 213
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 214
    .local v0, e:Ljava/io/IOException;
    const-string v1, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred during exportOneContactData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public onInit(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const-string v7, "VCardComposer.HandlerForOutputStream"

    .line 182
    :try_start_3
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v5, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-static {v5}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_17} :catch_2f

    .line 191
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-static {v2}, Landroid/pim/vcard/VCardComposer;->access$200(Landroid/pim/vcard/VCardComposer;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 194
    :try_start_1f
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    const-string v4, "-1"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/pim/vcard/VCardComposer;->access$300(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_1f .. :try_end_2d} :catch_6f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2d} :catch_8f

    .line 207
    :cond_2d
    const/4 v2, 0x1

    :goto_2e
    return v2

    .line 184
    :catch_2f
    move-exception v2

    move-object v1, v2

    .line 185
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-static {v3}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding is not supported (usually this does not happen!): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-static {v4}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    move v2, v6

    .line 188
    goto :goto_2e

    .line 195
    .end local v1       #e1:Ljava/io/UnsupportedEncodingException;,
    :catch_6f
    move-exception v2

    move-object v0, v2

    .line 196
    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VCardException has been thrown during on Init(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 198
    goto :goto_2e

    .line 199
    .end local v0       #e:Landroid/pim/vcard/exception/VCardException;,
    :catch_8f
    move-exception v2

    move-object v0, v2

    .line 200
    .local v0, e:Ljava/io/IOException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred during exportOneContactData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    move v2, v6

    .line 204
    goto/16 :goto_2e
.end method

.method public onTerminate()V
    .registers 5

    .prologue
    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    .line 225
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_24

    .line 230
    :try_start_7
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 231
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_21

    .line 233
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_47
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_21} :catch_25

    .line 240
    :cond_21
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    .line 243
    :cond_24
    :goto_24
    return-void

    .line 235
    :catch_25
    move-exception v1

    move-object v0, v1

    .line 236
    .local v0, e:Ljava/io/IOException;
    :try_start_27
    const-string v1, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing the output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_47

    .line 240
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    goto :goto_24

    .end local v0       #e:Ljava/io/IOException;,
    :catchall_47
    move-exception v1

    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    throw v1
.end method
