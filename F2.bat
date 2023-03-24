netsh int ipv4 set dynamicport tcp start=49152 num=16382/Start
netsh int ipv4 set dynamicport udp start=49152 num=16385/Options 
/
IP


net stop winnat ink
net start winnat server


sudo ifconfig lo0 alias 127.0.0.1


java.util.concurrent.CompletionException: java.net.BindException: Address already in use: bind
    at java.base/java.util.concurrent.CompletableFuture.encodeThrowable(CompletableFuture.java:314)
    at java.base/java.util.concurrent.CompletableFuture.completeThrowable(CompletableFuture.java:319)
    at java.base/java.util.concurrent.CompletableFuture$AsyncSupply.run(CompletableFuture.java:1702)
    at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)
    at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)
    at java.base/java.lang.Thread.run(Thread.java:834)
Caused by: java.net.BindException: Address already in use: bind
    at java.base/sun.nio.ch.Net.bind0(Native Method)
    at java.base/sun.nio.ch.Net.bind(Net.java:455)
    at java.base/sun.nio.ch.Net.bind(Net.java:447)
    at java.base/sun.nio.ch.ServerSocketChannelImpl.bind(ServerSocketChannelImpl.java:227)
    at io.netty.channel.socket.nio.NioServerSocketChannel.doBind(NioServerSocketChannel.java:134)
    at io.netty.channel.AbstractChannel$AbstractUnsafe.bind(AbstractChannel.java:550)
    at io.netty.channel.DefaultChannelPipeline$HeadContext.bind(DefaultChannelPipeline.java:1334)
    at io.netty.channel.AbstractChannelHandlerContext.invokeBind(AbstractChannelHandlerContext.java:506)
    at io.netty.channel.AbstractChannelHandlerContext.bind(AbstractChannelHandlerContext.java:491)
    at io.netty.channel.DefaultChannelPipeline.bind(DefaultChannelPipeline.java:973)
    at io.netty.channel.AbstractChannel.bind(AbstractChannel.java:248)
    at io.netty.bootstrap.AbstractBootstrap$2.run(AbstractBootstrap.java:356)
    at io.netty.util.concurrent.AbstractEventExecutor.safeExecute(AbstractEventExecutor.java:164)
    at io.netty.util.concurrent.SingleThreadEventExecutor.runAllTasks(SingleThreadEventExecutor.java:472)
    at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:500)
    at io.netty.util.concurrent.SingleThreadEventExecutor$4.run(SingleThreadEventExecutor.java:989)
    at io.netty.util.internal.ThreadExecutorMap$2.run(ThreadExecutorMap.java:74)
    at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)
    ... 1 more

-----
JRE 11.0.6+8-b765.25 amd64 by JetBrains s.r.o
C:\Users\yatwi\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\201.6668.197\jbr



java.util.concurrent.CompletionException: java.lang.IllegalStateException: failed to create a child event loop
    at java.base/java.util.concurrent.CompletableFuture.encodeThrowable(CompletableFuture.java:314)
    at java.base/java.util.concurrent.CompletableFuture.completeThrowable(CompletableFuture.java:319)
    at java.base/java.util.concurrent.CompletableFuture$AsyncSupply.run(CompletableFuture.java:1702)
    at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)
    at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)
    at java.base/java.util.concurrent.Executors$PrivilegedThreadFactory$1$1.run(Executors.java:668)
    at java.base/java.util.concurrent.Executors$PrivilegedThreadFactory$1$1.run(Executors.java:665)
    at java.base/java.security.AccessController.doPrivileged(Native Method)
    at java.base/java.util.concurrent.Executors$PrivilegedThreadFactory$1.run(Executors.java:665)
    at java.base/java.lang.Thread.run(Thread.java:834)
Caused by: java.lang.IllegalStateException: failed to create a child event loop
    at io.netty.util.concurrent.MultithreadEventExecutorGroup.<init>(MultithreadEventExecutorGroup.java:88)
    at io.netty.util.concurrent.MultithreadEventExecutorGroup.<init>(MultithreadEventExecutorGroup.java:58)
    at io.netty.util.concurrent.MultithreadEventExecutorGroup.<init>(MultithreadEventExecutorGroup.java:47)
    at io.netty.channel.MultithreadEventLoopGroup.<init>(MultithreadEventLoopGroup.java:59)
    at io.netty.channel.nio.NioEventLoopGroup.<init>(NioEventLoopGroup.java:86)
    at io.netty.channel.nio.NioEventLoopGroup.<init>(NioEventLoopGroup.java:81)
    at io.netty.channel.nio.NioEventLoopGroup.<init>(NioEventLoopGroup.java:68)
    at org.jetbrains.io.BuiltInServerKt.multiThreadEventLoopGroup(BuiltInServer.kt:144)
    at org.jetbrains.io.BuiltInServerKt.access$multiThreadEventLoopGroup(BuiltInServer.kt:1)
    at org.jetbrains.io.BuiltInServer$Companion.start(BuiltInServer.kt:54)
    at org.jetbrains.io.BuiltInServer.start(BuiltInServer.kt)
    at com.intellij.idea.SocketLock.lambda$lockAndTryActivate$2(SocketLock.java:171)
    at java.base/java.util.concurrent.CompletableFuture$AsyncSupply.run(CompletableFuture.java:1700)
    ... 7 more
Caused by: io.netty.channel.ChannelException: failed to open a new selector
    at io.netty.channel.nio.NioEventLoop.openSelector(NioEventLoop.java:175)
    at io.netty.channel.nio.NioEventLoop.<init>(NioEventLoop.java:142)
    at io.netty.channel.nio.NioEventLoopGroup.newChild(NioEventLoopGroup.java:146)
    at io.netty.channel.nio.NioEventLoopGroup.newChild(NioEventLoopGroup.java:37)
    at io.netty.util.concurrent.MultithreadEventExecutorGroup.<init>(MultithreadEventExecutorGroup.java:84)
    ... 19 more
Caused by: java.io.IOException: Unable to establish loopback connection
    at java.base/sun.nio.ch.PipeImpl$Initializer.run(PipeImpl.java:94)
    at java.base/sun.nio.ch.PipeImpl$Initializer.run(PipeImpl.java:61)
    at java.base/java.security.AccessController.doPrivileged(Native Method)
    at java.base/sun.nio.ch.PipeImpl.<init>(PipeImpl.java:171)
    at java.base/sun.nio.ch.SelectorProviderImpl.openPipe(SelectorProviderImpl.java:50)
    at java.base/java.nio.channels.Pipe.open(Pipe.java:155)
    at java.base/sun.nio.ch.WindowsSelectorImpl.<init>(WindowsSelectorImpl.java:142)
    at java.base/sun.nio.ch.WindowsSelectorProvider.openSelector(WindowsSelectorProvider.java:44)
    at io.netty.channel.nio.NioEventLoop.openSelector(NioEventLoop.java:173)
    ... 23 more
Caused by: java.net.ConnectException: Connection timed out: connect
    at java.base/sun.nio.ch.Net.connect0(Native Method)
    at java.base/sun.nio.ch.Net.connect(Net.java:476)
    at java.base/sun.nio.ch.Net.connect(Net.java:468)
    at java.base/sun.nio.ch.SocketChannelImpl.connect(SocketChannelImpl.java:694)
    at java.base/java.nio.channels.SocketChannel.open(SocketChannel.java:194)
    at java.base/sun.nio.ch.PipeImpl$Initializer$LoopbackConnector.run(PipeImpl.java:127)
    at java.base/sun.nio.ch.PipeImpl$Initializer.run(PipeImpl.java:76)
    ... 31 more

-----
JRE 11.0.8+10-b1129.2 amd64 by JetBrains s.r.o.
C:\Program Files\JetBrains\IntelliJ IDEA 203.5251.39\jbr


2020-04-23 15:31:14,896 | INFO  | ReSharperProcess               | Additional packages: <Packages><Folder Path="C:\Users\yatwi\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\201.6668.197\plugins\dotCommon\DotFiles"></Folder><Folder Path="C:\Users\yatwi\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\201.6668.197\plugins\dpa\DotFiles"></Folder><AdHocMetadata BaseDir="C:\Users\yatwi\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\201.6668.197\plugins\ForTea\dotnet" Version="2020.1.157" BuiltOn="2020-04-16T12:25:19.528Z" CompanyNameHuman="org.jetbrains" SubplatformName="fortea"><PackageFile RelativePath="ForTea.Core.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="ForTea.RiderPlugin.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="JetBrains.TextTemplating.dll" AssemblyName="*"></PackageFile></AdHocMetadata><AdHocMetadata BaseDir="C:\Users\yatwi\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\201.6668.197\plugins\rider-fsharp\dotnet" Version="2020.1.159" BuiltOn="2020-04-16T12:25:11.345Z" CompanyNameHuman="com.jetbrains.rider" SubplatformName="fsharp"><PackageFile RelativePath="Fantomas.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="FSharp.Compiler.Interactive.Settings.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="FSharp.Compiler.Service.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="FSharp.Core.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="FSharp.Core.xml"></PackageFile><PackageFile RelativePath="JetBrains.ReSharper.Plugins.FSharp.Common.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="JetBrains.ReSharper.Plugins.FSharp.Daemon.Cs.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="JetBrains.ReSharper.Plugins.FSharp.ProjectModelBase.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="JetBrains.ReSharper.Plugins.FSharp.Psi.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="JetBrains.ReSharper.Plugins.FSharp.Psi.Features.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="JetBrains.ReSharper.Plugins.FSharp.Services.Cs.dll" AssemblyName="*"></PackageFile></AdHocMetadata><AdHocMetadata BaseDir="C:\Users\yatwi\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\201.6668.197\plugins\rider-unity\dotnet" Version="2020.1.0.161" BuiltOn="2020-04-16T12:25:11.910Z" CompanyNameHuman="com.intellij.resharper" SubplatformName="unity"><PackageFile RelativePath="Extensions\com.intellij.resharper.unity\annotations\UnityEditor.EditorTestsRunner.xml"></PackageFile><PackageFile RelativePath="Extensions\com.intellij.resharper.unity\annotations\UnityEditor.xml"></PackageFile><PackageFile RelativePath="Extensions\com.intellij.resharper.unity\annotations\UnityEngine.AnimationModule.xml"></PackageFile><PackageFile RelativePath="Extensions\com.intellij.resharper.unity\annotations\UnityEngine.CoreModule.xml"></PackageFile><PackageFile RelativePath="Extensions\com.intellij.resharper.unity\annotations\UnityEngine.Networking.xml"></PackageFile><PackageFile RelativePath="Extensions\com.intellij.resharper.unity\annotations\UnityEngine.PhysicsModule.xml"></PackageFile><PackageFile RelativePath="Extensions\com.intellij.resharper.unity\annotations\UnityEngine.TileModule.xml"></PackageFile><PackageFile RelativePath="Extensions\com.intellij.resharper.unity\annotations\UnityEngine.xml"></PackageFile><PackageFile RelativePath="JetBrains.ReSharper.Plugins.Unity.dll" AssemblyName="*"></PackageFile><PackageFile RelativePath="JetBrains.ReSharper.Plugins.Yaml.dll" AssemblyName="*"></PackageFile></AdHocMetadata></Packages>
2020-04-23 15:31:14,957 | INFO  | ProtocolManager                | Using early-started protocol and process
2020-04-23 15:31:14,957 | INFO  | ProtocolManager                | Create protocol host...
2020-04-23 15:31:15,021 | ERROR | PluginManager                  | java.net.BindException: Address already in use: bind
java.util.concurrent.CompletionException: java.net.BindException: Address already in use: bind
	at java.base/java.util.concurrent.CompletableFuture.encodeThrowable(CompletableFuture.java:314)
	at java.base/java.util.concurrent.CompletableFuture.completeThrowable(CompletableFuture.java:319)
	at java.base/java.util.concurrent.CompletableFuture$AsyncSupply.run(CompletableFuture.java:1702)
	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)
	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)
	at java.base/java.lang.Thread.run(Thread.java:834)
Caused by: java.net.BindException: Address already in use: bind
	at java.base/sun.nio.ch.Net.bind0(Native Method)
	at java.base/sun.nio.ch.Net.bind(Net.java:455)
	at java.base/sun.nio.ch.Net.bind(Net.java:447)
	at java.base/sun.nio.ch.ServerSocketChannelImpl.bind(ServerSocketChannelImpl.java:227)
	at io.netty.channel.socket.nio.NioServerSocketChannel.doBind(NioServerSocketChannel.java:134)
	at io.netty.channel.AbstractChannel$AbstractUnsafe.bind(AbstractChannel.java:550)
	at io.netty.channel.DefaultChannelPipeline$HeadContext.bind(DefaultChannelPipeline.java:1334)
	at io.netty.channel.AbstractChannelHandlerContext.invokeBind(AbstractChannelHandlerContext.java:506)
	at io.netty.channel.AbstractChannelHandlerContext.bind(AbstractChannelHandlerContext.java:491)
	at io.netty.channel.DefaultChannelPipeline.bind(DefaultChannelPipeline.java:973)
	at io.netty.channel.AbstractChannel.bind(AbstractChannel.java:248)
	at io.netty.bootstrap.AbstractBootstrap$2.run(AbstractBootstrap.java:356)
	at io.netty.util.concurrent.AbstractEventExecutor.safeExecute(AbstractEventExecutor.java:164)
	at io.netty.util.concurrent.SingleThreadEventExecutor.runAllTasks(SingleThreadEventExecutor.java:472)
	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:500)
	at io.netty.util.concurrent.SingleThreadEventExecutor$4.run(SingleThreadEventExecutor.java:989)
	at io.netty.util.internal.ThreadExecutorMap$2.run(ThreadExecutorMap.java:74)
	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)
	... 1 more
2020-04-23 15:31:15,025 | ERROR | PluginManager                  | JetBrains Rider 2020.1.0  Build #RD-201.6668.197
2020-04-23 15:31:15,025 | ERROR | PluginManager                  | JDK: 11.0.6; VM: OpenJDK 64-Bit Server VM; Vendor: JetBrains s.r.o
2020-04-23 15:31:15,025 | ERROR | PluginManager                  | OS: Windows 10
2020-04-23 15:31:15,033 | WARN  | RiderApplicationLoadListener   | [STDERR] 
2020-04-23 15:31:15,034 | WARN  | RiderApplicationLoadListener   | [STDERR] Start Failed: Internal error. Please refer to http://jb.gg/ide/critical-startup-errors
2020-04-23 15:31:15,035 | WARN  | RiderApplicationLoadListener   | [STDERR] 
2020-04-23 15:31:15,035 | WARN  | RiderApplicationLoadListener   | [STDERR] java.util.concurrent.CompletionException: java.net.BindException: Address already in use: bind
2020-04-23 15:31:15,036 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.util.concurrent.CompletableFuture.encodeThrowable(CompletableFuture.java:314)
2020-04-23 15:31:15,036 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.util.concurrent.CompletableFuture.completeThrowable(CompletableFuture.java:319)
2020-04-23 15:31:15,036 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.util.concurrent.CompletableFuture$AsyncSupply.run(CompletableFuture.java:1702)
2020-04-23 15:31:15,036 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)
2020-04-23 15:31:15,036 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)
2020-04-23 15:31:15,036 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.lang.Thread.run(Thread.java:834)
2020-04-23 15:31:15,036 | WARN  | RiderApplicationLoadListener   | [STDERR] Caused by: java.net.BindException: Address already in use: bind
2020-04-23 15:31:15,036 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/sun.nio.ch.Net.bind0(Native Method)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/sun.nio.ch.Net.bind(Net.java:455)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/sun.nio.ch.Net.bind(Net.java:447)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/sun.nio.ch.ServerSocketChannelImpl.bind(ServerSocketChannelImpl.java:227)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.channel.socket.nio.NioServerSocketChannel.doBind(NioServerSocketChannel.java:134)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.channel.AbstractChannel$AbstractUnsafe.bind(AbstractChannel.java:550)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.channel.DefaultChannelPipeline$HeadContext.bind(DefaultChannelPipeline.java:1334)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.channel.AbstractChannelHandlerContext.invokeBind(AbstractChannelHandlerContext.java:506)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.channel.AbstractChannelHandlerContext.bind(AbstractChannelHandlerContext.java:491)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.channel.DefaultChannelPipeline.bind(DefaultChannelPipeline.java:973)
2020-04-23 15:31:15,037 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.channel.AbstractChannel.bind(AbstractChannel.java:248)
2020-04-23 15:31:15,038 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.bootstrap.AbstractBootstrap$2.run(AbstractBootstrap.java:356)
2020-04-23 15:31:15,038 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.util.concurrent.AbstractEventExecutor.safeExecute(AbstractEventExecutor.java:164)
2020-04-23 15:31:15,038 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.util.concurrent.SingleThreadEventExecutor.runAllTasks(SingleThreadEventExecutor.java:472)
2020-04-23 15:31:15,038 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:500)
2020-04-23 15:31:15,038 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.util.concurrent.SingleThreadEventExecutor$4.run(SingleThreadEventExecutor.java:989)
2020-04-23 15:31:15,039 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.util.internal.ThreadExecutorMap$2.run(ThreadExecutorMap.java:74)
2020-04-23 15:31:15,039 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)
2020-04-23 15:31:15,039 | WARN  | RiderApplicationLoadListener   | [STDERR] 	... 1 more
2020-04-23 15:31:15,039 | WARN  | RiderApplicationLoadListener   | [STDERR] 
2020-04-23 15:31:15,040 | WARN  | RiderApplicationLoadListener   | [STDERR] -----
2020-04-23 15:31:15,040 | WARN  | RiderApplicationLoadListener   | [STDERR] JRE 11.0.6+8-b765.25 amd64 by JetBrains s.r.o
2020-04-23 15:31:15,040 | WARN  | RiderApplicationLoadListener   | [STDERR] C:\Users\yatwi\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\201.6668.197\jbr
2020-04-23 15:31:15,086 | INFO  | PagedFileStorage               | lower=100; upper=500; buffer=10; max=1430
2020-04-23 15:31:15,107 | INFO  | FileChannelUtil                | un-interruptible FileChannel-s will be used for indexes
2020-04-23 15:31:15,134 | INFO  | CertificateManager             | Default SSL context initialized
2020-04-23 15:31:15,152 | INFO  | RegistryManager                | Registry values changed by user: debugger.new.debug.tool.window.view = true, ide.borderless.title.classpath = false, ide.borderless.title.debug = true, ide.borderless.title.product = false, ide.borderless.title.project.path = false, ide.require.transaction.for.model.changes = false, ide.svg.icon = true, ide.title.debug = true, ide.tooltip.initialDelay = 0, ide.tooltip.initialDelay.highlighter = 0, ide.tooltip.showAllSeverities = true, ide.tree.horizontal.default.autoscrolling = false, ide.win.file.chooser.native = true, ide.win.frame.decoration = true, parameter.info.max.visible.rows = 10, performance.watcher.sampling.interval.ms = 200, performance.watcher.unresponsive.interval.ms = 1000, search.everywhere.pattern.checking = false, search.everywhere.settings = true, show.diff.preview.as.editor.tab = true, show.diff.preview.as.editor.tab.with.single.click = true, vcs.log.show.diff.preview.as.editor.tab = true
2020-04-23 15:31:15,406 | INFO  | UISettings                     | Loaded: fontSize=13, fontScale=1.0; restored: fontSize=13, fontScale=1.0
2020-04-23 15:31:15,905 | ERROR | PluginManager                  | null
java.lang.NullPointerException
	at java.desktop/javax.swing.plaf.basic.BasicTextUI.getPreferredSize(BasicTextUI.java:933)
	at java.desktop/javax.swing.JComponent.getPreferredSize(JComponent.java:1683)
	at java.desktop/javax.swing.JEditorPane.getPreferredSize(JEditorPane.java:1345)
	at java.desktop/javax.swing.ScrollPaneLayout.layoutContainer(ScrollPaneLayout.java:795)
	at java.desktop/java.awt.Container.layout(Container.java:1537)
	at java.desktop/java.awt.Container.doLayout(Container.java:1526)
	at java.desktop/java.awt.Container.validateTree(Container.java:1722)
	at java.desktop/java.awt.Container.validate(Container.java:1657)
	at java.desktop/javax.swing.RepaintManager$3.run(RepaintManager.java:748)
	at java.desktop/javax.swing.RepaintManager$3.run(RepaintManager.java:746)
	at java.base/java.security.AccessController.doPrivileged(Native Method)
	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:85)
	at java.desktop/javax.swing.RepaintManager.validateInvalidComponents(RepaintManager.java:745)
	at java.desktop/javax.swing.RepaintManager$ProcessingRunnable.run(RepaintManager.java:1900)
	at java.desktop/java.awt.event.InvocationEvent.dispatch(InvocationEvent.java:313)
	at java.desktop/java.awt.EventQueue.dispatchEventImpl(EventQueue.java:776)
	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:727)
	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:721)
	at java.base/java.security.AccessController.doPrivileged(Native Method)
	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:85)
	at java.desktop/java.awt.EventQueue.dispatchEvent(EventQueue.java:746)
	at com.intellij.ide.IdeEventQueue.dispatchEvent(IdeEventQueue.java:416)
	at java.desktop/java.awt.EventDispatchThread.pumpOneEventForFilters(EventDispatchThread.java:203)
	at java.desktop/java.awt.EventDispatchThread.pumpEventsForFilter(EventDispatchThread.java:124)
	at java.desktop/java.awt.EventDispatchThread.pumpEventsForFilter(EventDispatchThread.java:117)
	at java.desktop/java.awt.WaitDispatchSupport$2.run(WaitDispatchSupport.java:190)
	at java.desktop/java.awt.event.InvocationEvent.dispatch(InvocationEvent.java:313)
	at java.desktop/java.awt.EventQueue.dispatchEventImpl(EventQueue.java:776)
	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:727)
	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:721)
	at java.base/java.security.AccessController.doPrivileged(Native Method)
	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:85)
	at java.desktop/java.awt.EventQueue.dispatchEvent(EventQueue.java:746)
	at com.intellij.ide.IdeEventQueue.dispatchEvent(IdeEventQueue.java:416)
	at java.desktop/java.awt.EventDispatchThread.pumpOneEventForFilters(EventDispatchThread.java:203)
	at java.desktop/java.awt.EventDispatchThread.pumpEventsForFilter(EventDispatchThread.java:124)
	at java.desktop/java.awt.EventDispatchThread.pumpEventsForHierarchy(EventDispatchThread.java:113)
	at java.desktop/java.awt.EventDispatchThread.pumpEvents(EventDispatchThread.java:109)
	at java.desktop/java.awt.EventDispatchThread.pumpEvents(EventDispatchThread.java:101)
	at java.desktop/java.awt.EventDispatchThread.run(EventDispatchThread.java:90)
2020-04-23 15:31:15,908 | ERROR | PluginManager                  | JetBrains Rider 2020.1.0  Build #RD-201.6668.197
2020-04-23 15:31:15,908 | ERROR | PluginManager                  | JDK: 11.0.6; VM: OpenJDK 64-Bit Server VM; Vendor: JetBrains s.r.o
2020-04-23 15:31:15,908 | ERROR | PluginManager                  | OS: Windows 10
2020-04-23 15:31:15,910 | WARN  | RiderApplicationLoadListener   | [STDERR] 
2020-04-23 15:31:15,911 | WARN  | RiderApplicationLoadListener   | [STDERR] Start Failed: Internal error. Please refer to http://jb.gg/ide/critical-startup-errors
2020-04-23 15:31:15,911 | WARN  | RiderApplicationLoadListener   | [STDERR] 
2020-04-23 15:31:15,911 | WARN  | RiderApplicationLoadListener   | [STDERR] java.lang.NullPointerException
2020-04-23 15:31:15,911 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/javax.swing.plaf.basic.BasicTextUI.getPreferredSize(BasicTextUI.java:933)
2020-04-23 15:31:15,911 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/javax.swing.JComponent.getPreferredSize(JComponent.java:1683)
2020-04-23 15:31:15,911 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/javax.swing.JEditorPane.getPreferredSize(JEditorPane.java:1345)
2020-04-23 15:31:15,912 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/javax.swing.ScrollPaneLayout.layoutContainer(ScrollPaneLayout.java:795)
2020-04-23 15:31:15,912 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.Container.layout(Container.java:1537)
2020-04-23 15:31:15,912 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.Container.doLayout(Container.java:1526)
2020-04-23 15:31:15,912 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.Container.validateTree(Container.java:1722)
2020-04-23 15:31:15,912 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.Container.validate(Container.java:1657)
2020-04-23 15:31:15,912 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/javax.swing.RepaintManager$3.run(RepaintManager.java:748)
2020-04-23 15:31:15,913 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/javax.swing.RepaintManager$3.run(RepaintManager.java:746)
2020-04-23 15:31:15,913 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.security.AccessController.doPrivileged(Native Method)
2020-04-23 15:31:15,913 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:85)
2020-04-23 15:31:15,913 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/javax.swing.RepaintManager.validateInvalidComponents(RepaintManager.java:745)
2020-04-23 15:31:15,913 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/javax.swing.RepaintManager$ProcessingRunnable.run(RepaintManager.java:1900)
2020-04-23 15:31:15,913 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.event.InvocationEvent.dispatch(InvocationEvent.java:313)
2020-04-23 15:31:15,913 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventQueue.dispatchEventImpl(EventQueue.java:776)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:727)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:721)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.security.AccessController.doPrivileged(Native Method)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:85)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventQueue.dispatchEvent(EventQueue.java:746)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at com.intellij.ide.IdeEventQueue.dispatchEvent(IdeEventQueue.java:416)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.pumpOneEventForFilters(EventDispatchThread.java:203)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.pumpEventsForFilter(EventDispatchThread.java:124)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.pumpEventsForFilter(EventDispatchThread.java:117)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.WaitDispatchSupport$2.run(WaitDispatchSupport.java:190)
2020-04-23 15:31:15,914 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.event.InvocationEvent.dispatch(InvocationEvent.java:313)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventQueue.dispatchEventImpl(EventQueue.java:776)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:727)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:721)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.security.AccessController.doPrivileged(Native Method)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:85)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventQueue.dispatchEvent(EventQueue.java:746)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at com.intellij.ide.IdeEventQueue.dispatchEvent(IdeEventQueue.java:416)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.pumpOneEventForFilters(EventDispatchThread.java:203)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.pumpEventsForFilter(EventDispatchThread.java:124)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.pumpEventsForHierarchy(EventDispatchThread.java:113)
2020-04-23 15:31:15,915 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.pumpEvents(EventDispatchThread.java:109)
2020-04-23 15:31:15,916 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.pumpEvents(EventDispatchThread.java:101)
2020-04-23 15:31:15,916 | WARN  | RiderApplicationLoadListener   | [STDERR] 	at java.desktop/java.awt.EventDispatchThread.run(EventDispatchThread.java:90)
2020-04-23 15:31:15,916 | WARN  | RiderApplicationLoadListener   | [STDERR] 
2020-04-23 15:31:15,916 | WARN  | RiderApplicationLoadListener   | [STDERR] -----
2020-04-23 15:31:15,916 | WARN  | RiderApplicationLoadListener   | [STDERR] JRE 11.0.6+8-b765.25 amd64 by JetBrains s.r.o
2020-04-23 15:31:15,916 | WARN  | RiderApplicationLoadListener   | [STDERR] C:\Users\yatwi\AppData\Local\JetBrains\Toolbox\apps\Rider\ch-0\201.6668.197\jbr
2020-04-23 15:31:15,955 | ERROR | ComponentStoreImpl             | Cannot init LafManager component state [Plugin: com.intellij]
com.intellij.diagnostic.PluginException: Cannot init LafManager component state [Plugin: com.intellij]
	at com.intellij.configurationStore.ComponentStoreImpl.initComponent(ComponentStoreImpl.kt:116)
	at com.intellij.configurationStore.ComponentStoreWithExtraComponents.initComponent(ComponentStoreWithExtraComponents.kt:50)
	at com.intellij.serviceContainer.ComponentManagerImpl.initializeComponent$intellij_platform_serviceContainer(ComponentManagerImpl.kt:343)
	at com.intellij.serviceContainer.MyComponentAdapter.doCreateInstance(MyComponentAdapter.kt:42)
	at com.intellij.serviceContainer.BaseComponentAdapter.getInstanceUncached(BaseComponentAdapter.kt:115)
	at com.intellij.serviceContainer.BaseComponentAdapter.getInstance(BaseComponentAdapter.kt:69)
	at com.intellij.serviceContainer.BaseComponentAdapter.getInstance$default(BaseComponentAdapter.kt:62)
	at com.intellij.serviceContainer.ComponentManagerImpl.getComponent(ComponentManagerImpl.kt:373)
	at com.intellij.ide.ui.LafManager.getInstance(LafManager.java:16)
	at com.intellij.openapi.editor.colors.impl.EditorColorsManagerImpl.loadSchemesFromThemes(EditorColorsManagerImpl.java:240)
	at com.intellij.openapi.editor.colors.impl.EditorColorsManagerImpl.<init>(EditorColorsManagerImpl.java:176)
	at com.intellij.openapi.editor.colors.impl.EditorColorsManagerImpl.<init>(EditorColorsManagerImpl.java:84)
	at java.base/jdk.internal.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at java.base/jdk.internal.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
	at java.base/jdk.internal.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.base/java.lang.reflect.Constructor.newInstance(Constructor.java:490)
	at com.intellij.serviceContainer.ConstructorInjectionKt.instantiateUsingPicoContainer(constructorInjection.kt:48)
	at com.intellij.serviceContainer.ComponentManagerImpl.instantiateClassWithConstructorInjection(ComponentManagerImpl.kt:645)
	at com.intellij.serviceContainer.ServiceComponentAdapter.createAndInitialize(ServiceComponentAdapter.kt:54)
	at com.intellij.serviceContainer.ServiceComponentAdapter.doCreateInstance(ServiceComponentAdapter.kt:41)
	at com.intellij.serviceContainer.BaseComponentAdapter.getInstanceUncached(BaseComponentAdapter.kt:115)
	at com.intellij.serviceContainer.BaseComponentAdapter.getInstance(BaseComponentAdapter.kt:69)
	at com.intellij.serviceContainer.BaseComponentAdapter.getInstance$default(BaseComponentAdapter.kt:62)
	at com.intellij.serviceContainer.ComponentManagerImpl$preloadServices$future$1.run(ComponentManagerImpl.kt:787)
	at java.base/java.util.concurrent.CompletableFuture$AsyncRun.run(CompletableFuture.java:1736)
	at com.intellij.util.concurrency.BoundedTaskExecutor.doRun(BoundedTaskExecutor.java:222)
	at com.intellij.util.concurrency.BoundedTaskExecutor.access$200(BoundedTaskExecutor.java:29)
	at com.intellij.util.concurrency.BoundedTaskExecutor$1.execute(BoundedTaskExecutor.java:201)
	at com.intellij.util.concurrency.BoundedTaskExecutor$1.run(BoundedTaskExecutor.java:193)
	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)
	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)
	at java.base/java.lang.Thread.run(Thread.java:834)
Caused by: com.intellij.openapi.diagnostic.RuntimeExceptionWithAttachments: EventQueue.isDispatchThread()=false Toolkit.getEventQueue()=com.intellij.ide.IdeEventQueue@5be184a
Current thread: Thread[ApplicationImpl pooled thread 3,4,Idea Thread Group] 1002005960
SystemEventQueueThread: Thread[AWT-EventQueue-0,6,Idea Thread Group] 1059998981
	at com.intellij.openapi.application.impl.ApplicationImpl.assertIsDispatchThread(ApplicationImpl.java:1057)
	at com.intellij.openapi.application.impl.ApplicationImpl.assertIsDispatchThread(ApplicationImpl.java:1039)
	at com.intellij.ide.IdeEventQueue.lambda$new$3(IdeEventQueue.java:214)
	at java.desktop/java.beans.PropertyChangeSupport.fire(PropertyChangeSupport.java:341)
	at java.desktop/java.beans.PropertyChangeSupport.firePropertyChange(PropertyChangeSupport.java:334)
	at java.desktop/java.beans.PropertyChangeSupport.firePropertyChange(PropertyChangeSupport.java:266)
	at java.desktop/java.awt.KeyboardFocusManager.firePropertyChange(KeyboardFocusManager.java:1487)
	at java.desktop/java.awt.KeyboardFocusManager.setGlobalPermanentFocusOwner(KeyboardFocusManager.java:783)
	at java.desktop/java.awt.Component.removeNotify(Component.java:7146)
	at java.desktop/java.awt.Container.removeNotify(Container.java:2847)
	at java.desktop/javax.swing.JComponent.removeNotify(JComponent.java:4809)
	at java.desktop/javax.swing.AbstractButton.removeNotify(AbstractButton.java:999)
	at java.desktop/javax.swing.JButton.removeNotify(JButton.java:227)
	at java.desktop/java.awt.Container.removeNotify(Container.java:2831)
	at java.desktop/javax.swing.JComponent.removeNotify(JComponent.java:4809)
	at java.desktop/java.awt.Container.removeAll(Container.java:1322)
	at java.desktop/javax.swing.plaf.basic.BasicOptionPaneUI.uninstallComponents(BasicOptionPaneUI.java:211)
	at java.desktop/javax.swing.plaf.basic.BasicOptionPaneUI.uninstallUI(BasicOptionPaneUI.java:164)
	at java.desktop/javax.swing.JComponent.uninstallUIAndProperties(JComponent.java:703)
	at java.desktop/javax.swing.JComponent.setUI(JComponent.java:676)
	at java.desktop/javax.swing.JOptionPane.setUI(JOptionPane.java:1851)
	at java.desktop/javax.swing.JOptionPane.updateUI(JOptionPane.java:1873)
	at com.intellij.util.IJSwingUtilities.updateComponentTreeUI(IJSwingUtilities.java:95)
	at com.intellij.ide.ui.laf.LafManagerImpl.updateUI(LafManagerImpl.java:867)
	at com.intellij.ide.ui.laf.LafManagerImpl.updateUI(LafManagerImpl.java:610)
	at com.intellij.ide.ui.laf.LafManagerImpl.initializeComponent(LafManagerImpl.java:225)
	at com.intellij.configurationStore.ComponentStoreImpl.initComponent(ComponentStoreImpl.kt:105)
	... 31 more
2020-04-23 15:31:15,957 | ERROR | ComponentStoreImpl             | JetBrains Rider 2020.1.0  Build #RD-201.6668.197
2020-04-23 15:31:15,957 | ERROR | ComponentStoreImpl             | JDK: 11.0.6; VM: OpenJDK 64-Bit Server VM; Vendor: JetBrains s.r.o
2020-04-23 15:31:15,957 | ERROR | ComponentStoreImpl             | OS: Windows 10
2020-04-23 15:31:15,999 | INFO  | UISettings                     | Loaded: fontSize=12, fontScale=1.0; restored: fontSize=12, fontScale=1.0
2020-04-23 15:31:16,011 | INFO  | UISettings                     | Loaded: fontSize=12, fontScale=1.0; restored: fontSize=12, fontScale=1.0
2020-04-23 15:31:16,055 | INFO  | UISettings                     | Loaded: fontSize=12, fontScale=1.0; restored: fontSize=12, fontScale=1.0
2020-04-23 15:31:16,057 | INFO  | UISettings                     | Loaded: fontSize=12, fontScale=1.0; restored: fontSize=12, fontScale=1.0
2020-04-23 15:31:16,060 | INFO  | UISettings                     | Loaded: fontSize=12, fontScale=1.0; restored: fontSize=12, fontScale=1.0
2020-04-23 15:31:16,063 | INFO  | UISettings                     | Loaded: fontSize=12, fontScale=1.0; restored: fontSize=12, fontScale=1.0
2020-04-23 15:31:16,900 | INFO  | FileBasedIndexDataInitialization | Initialization done: 1554
2020-04-23 15:31:16,961 | INFO  | RiderApplicationLoadListener   | [STDOUT] Debug | Server                    | 33:EarlyStartServerWire | EarlyStartServerWire : connected 
2020-04-23 15:31:16,965 | INFO  | RiderApplicationLoadListener   | [STDOUT] Debug | ByteBufferAsyncProcessor  | 33:EarlyStartServerWire | RESUME :: {id = EarlyStartServerWire/Sender, state = 'AsyncProcessing'} 
2020-04-23 15:31:17,367 | INFO  | StubIndexImpl$StubIndexInitialization | Initialization done: 467
2020-04-23 15:35:28,310 | INFO  | FileBasedIndexImpl             | START INDEX SHUTDOWN
2020-04-23 15:35:28,345 | INFO  | StubIndexImpl                  | StubIndexExtension-s were unloaded
2020-04-23 15:35:28,347 | INFO  | FileBasedIndexImpl             | END INDEX SHUTDOWN
2020-04-23 15:35:28,352 | INFO  | SerializationManagerImpl       | START StubSerializationManager SHUTDOWN
2020-04-23 15:35:28,352 | INFO  | SerializationManagerImpl       | END StubSerializationManager SHUTDOWN
2020-04-23 15:35:28,353 | INFO  | PersistentFS                   | VFS dispose started
2020-04-23 15:35:28,355 | INFO  | PersistentFS                   | VFS dispose completed
2020-04-23 15:35:28,355 | INFO  | Main                           | ------------------------------------------------------ IDE SHUTDOWN ------------------------------------------------------



Protocol tcp Port Exclusion Ranges

Start Port    End Port
----------    --------
      1876        1975
      1976        2075
      2076        2175
      2869        2869
      3288        3387
      3390        3489
      3490        3589
      4449        4548
      4549        4648
      4649        4748
      4749        4848
      4849        4948
      5357        5357
      6687        6786
      6787        6886
      6887        6986
      6987        7086
      7087        7186
      8486        8585
      8586        8685
      8686        8785
     12868       12967
     12968       13067
     13168       13267
     13268       13367
     13368       13467
     13568       13667
     50000       50059     *

* - Administered port exclusions.

_
(
>
SH
FP
CMD\
<0