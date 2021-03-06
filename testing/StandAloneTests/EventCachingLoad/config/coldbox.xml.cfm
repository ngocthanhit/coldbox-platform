<?xml version="1.0" encoding="UTF-8"?>
<Config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:noNamespaceSchemaLocation="http://www.coldbox.org/schema/config_3.0.0.xsd">
	<Settings>
		<!--The name of your application.-->
		<Setting name="AppName"						value="EventCacheLoad"/>
		<!-- ColdBox set-up information for J2EE installation.
		     As context-root are actually virtual locations which does not correspond to physical location of files. for example
		     /openbd   /var/www/html/tomcat/deploy/bluedragon

		     AppMapping setting will adjust physical location of Project/App files and coldbox will load handlers,plugis,config file etc
		     Create a cf mapping and enable this value.
		     /MyApp /var/www/html/tomcat/deploy/bluedragon/MyAppFolder

		If you are using a coldbox app to power flex/remote apps, you NEED to set the AppMapping also. In Summary,
		the AppMapping is either a CF mapping or the path from the webroot to this application root. If this setting
		is not set, then coldbox will try to auto-calculate it for you. Please read the docs.

		<Setting name="AppMapping"					value="/MyApp"/>

		-->
		<!--Default Debugmode boolean flag (Set to false in production environments)-->
		<Setting name="DebugMode" 					value="true" />
		<!--The Debug Password to use in order to activate/deactivate debugmode,activated by url actions -->
		<Setting name="DebugPassword" 				value=""/>
		<!--The fwreinit password to use in order to reinitialize the framework and application.Optional, else leave blank -->
		<Setting name="ReinitPassword" 				value=""/>
		<!--Default event name variable to use in URL/FORM etc. -->
		<Setting name="EventName"					value="event" />
		<!--Default Event to run if no event is set or passed. Usually the event to be fired first (NOTE: use event handler syntax)-->
		<Setting name="DefaultEvent" 				value="general.index"/>
		<!--Event Handler to run on the start of a request, leave blank if not used. Emulates the Application.cfc onRequestStart method	-->
		<Setting name="RequestStartHandler" 		value=""/>
		<!--Event Handler to run at end of all requests, leave blank if not used. Emulates the Application.cfc onRequestEnd method-->
		<Setting name="RequestEndHandler" 			value=""/>
		<!--Event Handler to run at the start of an application, leave blank if not used. Emulates the Application.cfc onApplicationStart method	-->
		<Setting name="ApplicationStartHandler" 	value=""/>
		<!--Event Handler to run at the start of a session, leave blank if not used.-->
		<Setting name="SessionStartHandler" 		value=""/>
		<!--Event Handler to run at the end of a session, leave blank if not used.-->
		<Setting name="SessionEndHandler" 			value=""/>
		<!--The event handler to execute on all framework exceptions. Event Handler syntax required.-->
		<Setting name="ExceptionHandler"			value="" />
		<!--What event to fire when an invalid event is detected-->
		<Setting name="onInvalidEvent" 				value="" />
		<!--Full path from the application's root to your custom error page, else leave blank. -->
		<Setting name="CustomErrorTemplate"			value="" />
		<!--UDF Library To Load on every request for your views and handlers -->
		<Setting name="UDFLibraryFile" 				value="" />
		<!--Flag to Auto reload the internal handlers directory listing. False for production. -->
		<Setting name="HandlersIndexAutoReload"   	value="false" />
		<!--Flag to auto reload the config.xml settings. False for production. -->
		<Setting name="ConfigAutoReload"          	value="false" />
		<!-- Declare the custom plugins base invocation path, if used. You have to use dot notation.Example: mymapping.myplugins	-->
		<Setting name="PluginsExternalLocation"   		value="" />
		<!-- Declare the external views location. It can be relative to this app or external. This in turn is used to do cfincludes. -->
		<Setting name="ViewsExternalLocation" 		value=""/>
		<!-- Declare the external handlers base invocation path, if used. You have to use dot notation.Example: mymapping.myhandlers	-->
		<Setting name="HandlersExternalLocation"   	value="" />
		<!--Flag to cache handlers. Default if left blank is true. -->
		<Setting name="HandlerCaching" 				value="true"/>
		<!--Flag to cache events if metadata declared. Default is true -->
		<Setting name="EventCaching" 				value="true"/>
	</Settings>

	<!-- Your Settings can go here, if not needed, use <YourSettings />. You can use these for anything you like.
		<YourSettings>
			<Setting name="MySetting" value="My Value"/>

			whether to encrypt the values or not
			<Setting name="cookiestorage_encryption" value="true"/>

			The encryption seed to use. Else, use a default one (Not Recommened)
			<Setting name="cookiestorage_encryption_seed" value="mykey"/>

			The encryption algorithm to use (According to CFML Engine)
			<Setting name="cookiestorage_encryption_algorithm" value="CFMX_COMPAT or BD_DEFAULT"/>

			Messagebox Plugin (You can now override the storage scope without affecting all framework applications)
			<Setting name="MessageBox_storage_scope" value="session or client" />

			Complex Settings follow JSON Syntax. www.json.org.
			*IMPORTANT: use single quotes in this xml file for JSON notation, ColdBox will translate it to double quotes.
		</YourSettings>
	 -->
	<YourSettings>

	</YourSettings>

	<!-- Custom Conventions : You can override the framework wide conventions of the locations of the needed objects
	<Conventions>
		<handlersLocation></handlersLocation>
		<pluginsLocation></pluginsLocation>
		<layoutsLocation></layoutsLocation>
		<viewsLocation></viewsLocation>
		<eventAction></eventAction>
		<modelsLocation></modelsLocation>
	</Conventions>
	-->

	<!--
	Control the ColdBox Debugger. The panels are self explanatory. The other settings are explained below.
	PersistentRequestProfiler : Activate the event profiler across multiple requests
	maxPersistentRequestProfilers : Max records to keep in the profiler. Don't get gready.
	maxRCPanelQueryRows : If a query is dumped in the RC panel, it will be truncated to this many rows.
	-->
	<DebuggerSettings>
		<PersistentRequestProfiler>true</PersistentRequestProfiler>
		<maxPersistentRequestProfilers>10</maxPersistentRequestProfilers>
		<maxRCPanelQueryRows>50</maxRCPanelQueryRows>

		<TracerPanel 	show="false" expanded="true" />
		<InfoPanel 		show="false" expanded="true" />
		<CachePanel 	show="false" expanded="false" />
		<RCPanel		show="false" expanded="false" />
		<ModulesPanel	show="false" expanded="false" />
	</DebuggerSettings>

	<!--Optional,if blank it will use the CFMX administrator settings.-->
	<MailServerSettings>
		<MailServer></MailServer>
		<MailPort></MailPort>
		<MailUsername></MailUsername>
		<MailPassword></MailPassword>
	</MailServerSettings>

	<!--Emails to Send bug reports, you can create as many as you like -->
	<BugTracerReports>
		<!-- <BugEmail>myemail@gmail.com</BugEmail> -->
	</BugTracerReports>

	<!--Webservice declarations your use in your application, if not use, leave blank
	Note that for the same webservice name you can have a development url and a production url.-->
	<WebServices>
		<!-- <WebService name="TESTWS1" URL="http://www.test.com/test1.cfc?wsdl" DevURL="http://dev.test.com/test1.cfc?wsdl" /> -->
		<!-- <WebService name="TESTWS2" URL="http://www.test.com/test2.cfc?wsdl" DevURL="http://dev.test.com/test2.cfc?wsdl" /> -->
	</WebServices>

	<!--Declare Layouts for your application here-->
	<Layouts>
		<!--Declare the default layout, MANDATORY-->
		<DefaultLayout>Layout.Main.cfm</DefaultLayout>

		<!--Default View, OPTIONAL
		<DefaultView>home</DefaultView>
		-->

		<!--
		Declare other layouts, with view/folder assignments if needed, else do not write them
		<Layout file="Layout.Popup.cfm" name="popup">
			<View>vwTest</View>
			<View>vwMyView</View>
			<Folder>tags</Folder>
		</Layout>
		-->
	</Layouts>

	<!--Internationalization and resource Bundle setup:
	<i18N>
		<DefaultResourceBundle>includes/main</DefaultResourceBundle>
		<DefaultLocale>en_US</DefaultLocale>
		<LocaleStorage>session</LocaleStorage>
		<UnknownTranslation></UnknownTranslation>
	</i18N>
	-->
	<i18N />

	<!--Datasource Setup, you can then retreive a datasourceBean via the getDatasource("name") method: -->
	<Datasources>
		<!-- <Datasource alias="MyDSNAlias" name="real_dsn_name"   dbtype="mysql"  username="" password="" /> -->
	</Datasources>

	<!--ColdBox Object Caching Settings Overrides the Framework-wide settings -->
	<Cache>
		<ObjectDefaultTimeout>60</ObjectDefaultTimeout>
		<ObjectDefaultLastAccessTimeout>30</ObjectDefaultLastAccessTimeout>
		<UseLastAccessTimeouts>true</UseLastAccessTimeouts>
		<ReapFrequency>1</ReapFrequency>
		<MaxObjects>100</MaxObjects>
		<FreeMemoryPercentageThreshold>0</FreeMemoryPercentageThreshold>
		<EvictionPolicy>LRU</EvictionPolicy>
	</Cache>


	<!-- Interceptor Declarations
	<Interceptors throwOnInvalidStates="true">
		<CustomInterceptionPoints>comma-delimited list</CustomInterceptionPoints>
		<Interceptor class="full class name">
			<Property name="myProp">value</Property>
			<Property name="myArray">[1,2,3]</Property>
			<Property name="myStruct">{ key1:1, key2:2 }</Property>
		</Inteceptor>
		<Interceptor class="no property" />
	</Interceptors>
	-->

	<Interceptors>
		<!-- USE SES -->
		<Interceptor class="coldbox.system.interceptors.SES">
			<Property name="configFile">config/routes.cfm</Property>
		</Interceptor>
	</Interceptors>

</Config>
