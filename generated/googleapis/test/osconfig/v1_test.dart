library googleapis.osconfig.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/osconfig/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed1605() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1605(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1606() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1606(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAptSettings = 0;
buildAptSettings() {
  var o = new api.AptSettings();
  buildCounterAptSettings++;
  if (buildCounterAptSettings < 3) {
    o.excludes = buildUnnamed1605();
    o.exclusivePackages = buildUnnamed1606();
    o.type = "foo";
  }
  buildCounterAptSettings--;
  return o;
}

checkAptSettings(api.AptSettings o) {
  buildCounterAptSettings++;
  if (buildCounterAptSettings < 3) {
    checkUnnamed1605(o.excludes);
    checkUnnamed1606(o.exclusivePackages);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAptSettings--;
}

core.int buildCounterCancelPatchJobRequest = 0;
buildCancelPatchJobRequest() {
  var o = new api.CancelPatchJobRequest();
  buildCounterCancelPatchJobRequest++;
  if (buildCounterCancelPatchJobRequest < 3) {}
  buildCounterCancelPatchJobRequest--;
  return o;
}

checkCancelPatchJobRequest(api.CancelPatchJobRequest o) {
  buildCounterCancelPatchJobRequest++;
  if (buildCounterCancelPatchJobRequest < 3) {}
  buildCounterCancelPatchJobRequest--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExecStep = 0;
buildExecStep() {
  var o = new api.ExecStep();
  buildCounterExecStep++;
  if (buildCounterExecStep < 3) {
    o.linuxExecStepConfig = buildExecStepConfig();
    o.windowsExecStepConfig = buildExecStepConfig();
  }
  buildCounterExecStep--;
  return o;
}

checkExecStep(api.ExecStep o) {
  buildCounterExecStep++;
  if (buildCounterExecStep < 3) {
    checkExecStepConfig(o.linuxExecStepConfig);
    checkExecStepConfig(o.windowsExecStepConfig);
  }
  buildCounterExecStep--;
}

buildUnnamed1607() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1607(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterExecStepConfig = 0;
buildExecStepConfig() {
  var o = new api.ExecStepConfig();
  buildCounterExecStepConfig++;
  if (buildCounterExecStepConfig < 3) {
    o.allowedSuccessCodes = buildUnnamed1607();
    o.gcsObject = buildGcsObject();
    o.interpreter = "foo";
    o.localPath = "foo";
  }
  buildCounterExecStepConfig--;
  return o;
}

checkExecStepConfig(api.ExecStepConfig o) {
  buildCounterExecStepConfig++;
  if (buildCounterExecStepConfig < 3) {
    checkUnnamed1607(o.allowedSuccessCodes);
    checkGcsObject(o.gcsObject);
    unittest.expect(o.interpreter, unittest.equals('foo'));
    unittest.expect(o.localPath, unittest.equals('foo'));
  }
  buildCounterExecStepConfig--;
}

core.int buildCounterExecutePatchJobRequest = 0;
buildExecutePatchJobRequest() {
  var o = new api.ExecutePatchJobRequest();
  buildCounterExecutePatchJobRequest++;
  if (buildCounterExecutePatchJobRequest < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.dryRun = true;
    o.duration = "foo";
    o.instanceFilter = buildPatchInstanceFilter();
    o.patchConfig = buildPatchConfig();
    o.rollout = buildPatchRollout();
  }
  buildCounterExecutePatchJobRequest--;
  return o;
}

checkExecutePatchJobRequest(api.ExecutePatchJobRequest o) {
  buildCounterExecutePatchJobRequest++;
  if (buildCounterExecutePatchJobRequest < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.dryRun, unittest.isTrue);
    unittest.expect(o.duration, unittest.equals('foo'));
    checkPatchInstanceFilter(o.instanceFilter);
    checkPatchConfig(o.patchConfig);
    checkPatchRollout(o.rollout);
  }
  buildCounterExecutePatchJobRequest--;
}

core.int buildCounterFixedOrPercent = 0;
buildFixedOrPercent() {
  var o = new api.FixedOrPercent();
  buildCounterFixedOrPercent++;
  if (buildCounterFixedOrPercent < 3) {
    o.fixed = 42;
    o.percent = 42;
  }
  buildCounterFixedOrPercent--;
  return o;
}

checkFixedOrPercent(api.FixedOrPercent o) {
  buildCounterFixedOrPercent++;
  if (buildCounterFixedOrPercent < 3) {
    unittest.expect(o.fixed, unittest.equals(42));
    unittest.expect(o.percent, unittest.equals(42));
  }
  buildCounterFixedOrPercent--;
}

core.int buildCounterGcsObject = 0;
buildGcsObject() {
  var o = new api.GcsObject();
  buildCounterGcsObject++;
  if (buildCounterGcsObject < 3) {
    o.bucket = "foo";
    o.generationNumber = "foo";
    o.object = "foo";
  }
  buildCounterGcsObject--;
  return o;
}

checkGcsObject(api.GcsObject o) {
  buildCounterGcsObject++;
  if (buildCounterGcsObject < 3) {
    unittest.expect(o.bucket, unittest.equals('foo'));
    unittest.expect(o.generationNumber, unittest.equals('foo'));
    unittest.expect(o.object, unittest.equals('foo'));
  }
  buildCounterGcsObject--;
}

core.int buildCounterGooSettings = 0;
buildGooSettings() {
  var o = new api.GooSettings();
  buildCounterGooSettings++;
  if (buildCounterGooSettings < 3) {}
  buildCounterGooSettings--;
  return o;
}

checkGooSettings(api.GooSettings o) {
  buildCounterGooSettings++;
  if (buildCounterGooSettings < 3) {}
  buildCounterGooSettings--;
}

buildUnnamed1608() {
  var o = new core.Map<core.String, api.InventoryItem>();
  o["x"] = buildInventoryItem();
  o["y"] = buildInventoryItem();
  return o;
}

checkUnnamed1608(core.Map<core.String, api.InventoryItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryItem(o["x"]);
  checkInventoryItem(o["y"]);
}

core.int buildCounterInventory = 0;
buildInventory() {
  var o = new api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.items = buildUnnamed1608();
    o.osInfo = buildInventoryOsInfo();
  }
  buildCounterInventory--;
  return o;
}

checkInventory(api.Inventory o) {
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    checkUnnamed1608(o.items);
    checkInventoryOsInfo(o.osInfo);
  }
  buildCounterInventory--;
}

core.int buildCounterInventoryItem = 0;
buildInventoryItem() {
  var o = new api.InventoryItem();
  buildCounterInventoryItem++;
  if (buildCounterInventoryItem < 3) {
    o.availablePackage = buildInventorySoftwarePackage();
    o.createTime = "foo";
    o.id = "foo";
    o.installedPackage = buildInventorySoftwarePackage();
    o.originType = "foo";
    o.type = "foo";
    o.updateTime = "foo";
  }
  buildCounterInventoryItem--;
  return o;
}

checkInventoryItem(api.InventoryItem o) {
  buildCounterInventoryItem++;
  if (buildCounterInventoryItem < 3) {
    checkInventorySoftwarePackage(o.availablePackage);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkInventorySoftwarePackage(o.installedPackage);
    unittest.expect(o.originType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterInventoryItem--;
}

core.int buildCounterInventoryOsInfo = 0;
buildInventoryOsInfo() {
  var o = new api.InventoryOsInfo();
  buildCounterInventoryOsInfo++;
  if (buildCounterInventoryOsInfo < 3) {
    o.architecture = "foo";
    o.hostname = "foo";
    o.kernelRelease = "foo";
    o.kernelVersion = "foo";
    o.longName = "foo";
    o.osconfigAgentVersion = "foo";
    o.shortName = "foo";
    o.version = "foo";
  }
  buildCounterInventoryOsInfo--;
  return o;
}

checkInventoryOsInfo(api.InventoryOsInfo o) {
  buildCounterInventoryOsInfo++;
  if (buildCounterInventoryOsInfo < 3) {
    unittest.expect(o.architecture, unittest.equals('foo'));
    unittest.expect(o.hostname, unittest.equals('foo'));
    unittest.expect(o.kernelRelease, unittest.equals('foo'));
    unittest.expect(o.kernelVersion, unittest.equals('foo'));
    unittest.expect(o.longName, unittest.equals('foo'));
    unittest.expect(o.osconfigAgentVersion, unittest.equals('foo'));
    unittest.expect(o.shortName, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterInventoryOsInfo--;
}

core.int buildCounterInventorySoftwarePackage = 0;
buildInventorySoftwarePackage() {
  var o = new api.InventorySoftwarePackage();
  buildCounterInventorySoftwarePackage++;
  if (buildCounterInventorySoftwarePackage < 3) {
    o.aptPackage = buildInventoryVersionedPackage();
    o.cosPackage = buildInventoryVersionedPackage();
    o.googetPackage = buildInventoryVersionedPackage();
    o.qfePackage = buildInventoryWindowsQuickFixEngineeringPackage();
    o.wuaPackage = buildInventoryWindowsUpdatePackage();
    o.yumPackage = buildInventoryVersionedPackage();
    o.zypperPackage = buildInventoryVersionedPackage();
    o.zypperPatch = buildInventoryZypperPatch();
  }
  buildCounterInventorySoftwarePackage--;
  return o;
}

checkInventorySoftwarePackage(api.InventorySoftwarePackage o) {
  buildCounterInventorySoftwarePackage++;
  if (buildCounterInventorySoftwarePackage < 3) {
    checkInventoryVersionedPackage(o.aptPackage);
    checkInventoryVersionedPackage(o.cosPackage);
    checkInventoryVersionedPackage(o.googetPackage);
    checkInventoryWindowsQuickFixEngineeringPackage(o.qfePackage);
    checkInventoryWindowsUpdatePackage(o.wuaPackage);
    checkInventoryVersionedPackage(o.yumPackage);
    checkInventoryVersionedPackage(o.zypperPackage);
    checkInventoryZypperPatch(o.zypperPatch);
  }
  buildCounterInventorySoftwarePackage--;
}

core.int buildCounterInventoryVersionedPackage = 0;
buildInventoryVersionedPackage() {
  var o = new api.InventoryVersionedPackage();
  buildCounterInventoryVersionedPackage++;
  if (buildCounterInventoryVersionedPackage < 3) {
    o.architecture = "foo";
    o.packageName = "foo";
    o.version = "foo";
  }
  buildCounterInventoryVersionedPackage--;
  return o;
}

checkInventoryVersionedPackage(api.InventoryVersionedPackage o) {
  buildCounterInventoryVersionedPackage++;
  if (buildCounterInventoryVersionedPackage < 3) {
    unittest.expect(o.architecture, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterInventoryVersionedPackage--;
}

core.int buildCounterInventoryWindowsQuickFixEngineeringPackage = 0;
buildInventoryWindowsQuickFixEngineeringPackage() {
  var o = new api.InventoryWindowsQuickFixEngineeringPackage();
  buildCounterInventoryWindowsQuickFixEngineeringPackage++;
  if (buildCounterInventoryWindowsQuickFixEngineeringPackage < 3) {
    o.caption = "foo";
    o.description = "foo";
    o.hotFixId = "foo";
    o.installTime = "foo";
  }
  buildCounterInventoryWindowsQuickFixEngineeringPackage--;
  return o;
}

checkInventoryWindowsQuickFixEngineeringPackage(
    api.InventoryWindowsQuickFixEngineeringPackage o) {
  buildCounterInventoryWindowsQuickFixEngineeringPackage++;
  if (buildCounterInventoryWindowsQuickFixEngineeringPackage < 3) {
    unittest.expect(o.caption, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.hotFixId, unittest.equals('foo'));
    unittest.expect(o.installTime, unittest.equals('foo'));
  }
  buildCounterInventoryWindowsQuickFixEngineeringPackage--;
}

buildUnnamed1609() {
  var o =
      new core.List<api.InventoryWindowsUpdatePackageWindowsUpdateCategory>();
  o.add(buildInventoryWindowsUpdatePackageWindowsUpdateCategory());
  o.add(buildInventoryWindowsUpdatePackageWindowsUpdateCategory());
  return o;
}

checkUnnamed1609(
    core.List<api.InventoryWindowsUpdatePackageWindowsUpdateCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryWindowsUpdatePackageWindowsUpdateCategory(o[0]);
  checkInventoryWindowsUpdatePackageWindowsUpdateCategory(o[1]);
}

buildUnnamed1610() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1610(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1611() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1611(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInventoryWindowsUpdatePackage = 0;
buildInventoryWindowsUpdatePackage() {
  var o = new api.InventoryWindowsUpdatePackage();
  buildCounterInventoryWindowsUpdatePackage++;
  if (buildCounterInventoryWindowsUpdatePackage < 3) {
    o.categories = buildUnnamed1609();
    o.description = "foo";
    o.kbArticleIds = buildUnnamed1610();
    o.lastDeploymentChangeTime = "foo";
    o.moreInfoUrls = buildUnnamed1611();
    o.revisionNumber = 42;
    o.supportUrl = "foo";
    o.title = "foo";
    o.updateId = "foo";
  }
  buildCounterInventoryWindowsUpdatePackage--;
  return o;
}

checkInventoryWindowsUpdatePackage(api.InventoryWindowsUpdatePackage o) {
  buildCounterInventoryWindowsUpdatePackage++;
  if (buildCounterInventoryWindowsUpdatePackage < 3) {
    checkUnnamed1609(o.categories);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed1610(o.kbArticleIds);
    unittest.expect(o.lastDeploymentChangeTime, unittest.equals('foo'));
    checkUnnamed1611(o.moreInfoUrls);
    unittest.expect(o.revisionNumber, unittest.equals(42));
    unittest.expect(o.supportUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updateId, unittest.equals('foo'));
  }
  buildCounterInventoryWindowsUpdatePackage--;
}

core.int buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory = 0;
buildInventoryWindowsUpdatePackageWindowsUpdateCategory() {
  var o = new api.InventoryWindowsUpdatePackageWindowsUpdateCategory();
  buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory++;
  if (buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory < 3) {
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory--;
  return o;
}

checkInventoryWindowsUpdatePackageWindowsUpdateCategory(
    api.InventoryWindowsUpdatePackageWindowsUpdateCategory o) {
  buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory++;
  if (buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterInventoryWindowsUpdatePackageWindowsUpdateCategory--;
}

core.int buildCounterInventoryZypperPatch = 0;
buildInventoryZypperPatch() {
  var o = new api.InventoryZypperPatch();
  buildCounterInventoryZypperPatch++;
  if (buildCounterInventoryZypperPatch < 3) {
    o.category = "foo";
    o.patchName = "foo";
    o.severity = "foo";
    o.summary = "foo";
  }
  buildCounterInventoryZypperPatch--;
  return o;
}

checkInventoryZypperPatch(api.InventoryZypperPatch o) {
  buildCounterInventoryZypperPatch++;
  if (buildCounterInventoryZypperPatch < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.patchName, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.summary, unittest.equals('foo'));
  }
  buildCounterInventoryZypperPatch--;
}

buildUnnamed1612() {
  var o = new core.List<api.PatchDeployment>();
  o.add(buildPatchDeployment());
  o.add(buildPatchDeployment());
  return o;
}

checkUnnamed1612(core.List<api.PatchDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchDeployment(o[0]);
  checkPatchDeployment(o[1]);
}

core.int buildCounterListPatchDeploymentsResponse = 0;
buildListPatchDeploymentsResponse() {
  var o = new api.ListPatchDeploymentsResponse();
  buildCounterListPatchDeploymentsResponse++;
  if (buildCounterListPatchDeploymentsResponse < 3) {
    o.nextPageToken = "foo";
    o.patchDeployments = buildUnnamed1612();
  }
  buildCounterListPatchDeploymentsResponse--;
  return o;
}

checkListPatchDeploymentsResponse(api.ListPatchDeploymentsResponse o) {
  buildCounterListPatchDeploymentsResponse++;
  if (buildCounterListPatchDeploymentsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1612(o.patchDeployments);
  }
  buildCounterListPatchDeploymentsResponse--;
}

buildUnnamed1613() {
  var o = new core.List<api.PatchJobInstanceDetails>();
  o.add(buildPatchJobInstanceDetails());
  o.add(buildPatchJobInstanceDetails());
  return o;
}

checkUnnamed1613(core.List<api.PatchJobInstanceDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchJobInstanceDetails(o[0]);
  checkPatchJobInstanceDetails(o[1]);
}

core.int buildCounterListPatchJobInstanceDetailsResponse = 0;
buildListPatchJobInstanceDetailsResponse() {
  var o = new api.ListPatchJobInstanceDetailsResponse();
  buildCounterListPatchJobInstanceDetailsResponse++;
  if (buildCounterListPatchJobInstanceDetailsResponse < 3) {
    o.nextPageToken = "foo";
    o.patchJobInstanceDetails = buildUnnamed1613();
  }
  buildCounterListPatchJobInstanceDetailsResponse--;
  return o;
}

checkListPatchJobInstanceDetailsResponse(
    api.ListPatchJobInstanceDetailsResponse o) {
  buildCounterListPatchJobInstanceDetailsResponse++;
  if (buildCounterListPatchJobInstanceDetailsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1613(o.patchJobInstanceDetails);
  }
  buildCounterListPatchJobInstanceDetailsResponse--;
}

buildUnnamed1614() {
  var o = new core.List<api.PatchJob>();
  o.add(buildPatchJob());
  o.add(buildPatchJob());
  return o;
}

checkUnnamed1614(core.List<api.PatchJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchJob(o[0]);
  checkPatchJob(o[1]);
}

core.int buildCounterListPatchJobsResponse = 0;
buildListPatchJobsResponse() {
  var o = new api.ListPatchJobsResponse();
  buildCounterListPatchJobsResponse++;
  if (buildCounterListPatchJobsResponse < 3) {
    o.nextPageToken = "foo";
    o.patchJobs = buildUnnamed1614();
  }
  buildCounterListPatchJobsResponse--;
  return o;
}

checkListPatchJobsResponse(api.ListPatchJobsResponse o) {
  buildCounterListPatchJobsResponse++;
  if (buildCounterListPatchJobsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1614(o.patchJobs);
  }
  buildCounterListPatchJobsResponse--;
}

core.int buildCounterMonthlySchedule = 0;
buildMonthlySchedule() {
  var o = new api.MonthlySchedule();
  buildCounterMonthlySchedule++;
  if (buildCounterMonthlySchedule < 3) {
    o.monthDay = 42;
    o.weekDayOfMonth = buildWeekDayOfMonth();
  }
  buildCounterMonthlySchedule--;
  return o;
}

checkMonthlySchedule(api.MonthlySchedule o) {
  buildCounterMonthlySchedule++;
  if (buildCounterMonthlySchedule < 3) {
    unittest.expect(o.monthDay, unittest.equals(42));
    checkWeekDayOfMonth(o.weekDayOfMonth);
  }
  buildCounterMonthlySchedule--;
}

core.int buildCounterOneTimeSchedule = 0;
buildOneTimeSchedule() {
  var o = new api.OneTimeSchedule();
  buildCounterOneTimeSchedule++;
  if (buildCounterOneTimeSchedule < 3) {
    o.executeTime = "foo";
  }
  buildCounterOneTimeSchedule--;
  return o;
}

checkOneTimeSchedule(api.OneTimeSchedule o) {
  buildCounterOneTimeSchedule++;
  if (buildCounterOneTimeSchedule < 3) {
    unittest.expect(o.executeTime, unittest.equals('foo'));
  }
  buildCounterOneTimeSchedule--;
}

core.int buildCounterPatchConfig = 0;
buildPatchConfig() {
  var o = new api.PatchConfig();
  buildCounterPatchConfig++;
  if (buildCounterPatchConfig < 3) {
    o.apt = buildAptSettings();
    o.goo = buildGooSettings();
    o.postStep = buildExecStep();
    o.preStep = buildExecStep();
    o.rebootConfig = "foo";
    o.windowsUpdate = buildWindowsUpdateSettings();
    o.yum = buildYumSettings();
    o.zypper = buildZypperSettings();
  }
  buildCounterPatchConfig--;
  return o;
}

checkPatchConfig(api.PatchConfig o) {
  buildCounterPatchConfig++;
  if (buildCounterPatchConfig < 3) {
    checkAptSettings(o.apt);
    checkGooSettings(o.goo);
    checkExecStep(o.postStep);
    checkExecStep(o.preStep);
    unittest.expect(o.rebootConfig, unittest.equals('foo'));
    checkWindowsUpdateSettings(o.windowsUpdate);
    checkYumSettings(o.yum);
    checkZypperSettings(o.zypper);
  }
  buildCounterPatchConfig--;
}

core.int buildCounterPatchDeployment = 0;
buildPatchDeployment() {
  var o = new api.PatchDeployment();
  buildCounterPatchDeployment++;
  if (buildCounterPatchDeployment < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.duration = "foo";
    o.instanceFilter = buildPatchInstanceFilter();
    o.lastExecuteTime = "foo";
    o.name = "foo";
    o.oneTimeSchedule = buildOneTimeSchedule();
    o.patchConfig = buildPatchConfig();
    o.recurringSchedule = buildRecurringSchedule();
    o.rollout = buildPatchRollout();
    o.updateTime = "foo";
  }
  buildCounterPatchDeployment--;
  return o;
}

checkPatchDeployment(api.PatchDeployment o) {
  buildCounterPatchDeployment++;
  if (buildCounterPatchDeployment < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    checkPatchInstanceFilter(o.instanceFilter);
    unittest.expect(o.lastExecuteTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOneTimeSchedule(o.oneTimeSchedule);
    checkPatchConfig(o.patchConfig);
    checkRecurringSchedule(o.recurringSchedule);
    checkPatchRollout(o.rollout);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterPatchDeployment--;
}

buildUnnamed1615() {
  var o = new core.List<api.PatchInstanceFilterGroupLabel>();
  o.add(buildPatchInstanceFilterGroupLabel());
  o.add(buildPatchInstanceFilterGroupLabel());
  return o;
}

checkUnnamed1615(core.List<api.PatchInstanceFilterGroupLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatchInstanceFilterGroupLabel(o[0]);
  checkPatchInstanceFilterGroupLabel(o[1]);
}

buildUnnamed1616() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1616(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1617() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1617(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1618() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1618(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPatchInstanceFilter = 0;
buildPatchInstanceFilter() {
  var o = new api.PatchInstanceFilter();
  buildCounterPatchInstanceFilter++;
  if (buildCounterPatchInstanceFilter < 3) {
    o.all = true;
    o.groupLabels = buildUnnamed1615();
    o.instanceNamePrefixes = buildUnnamed1616();
    o.instances = buildUnnamed1617();
    o.zones = buildUnnamed1618();
  }
  buildCounterPatchInstanceFilter--;
  return o;
}

checkPatchInstanceFilter(api.PatchInstanceFilter o) {
  buildCounterPatchInstanceFilter++;
  if (buildCounterPatchInstanceFilter < 3) {
    unittest.expect(o.all, unittest.isTrue);
    checkUnnamed1615(o.groupLabels);
    checkUnnamed1616(o.instanceNamePrefixes);
    checkUnnamed1617(o.instances);
    checkUnnamed1618(o.zones);
  }
  buildCounterPatchInstanceFilter--;
}

buildUnnamed1619() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1619(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterPatchInstanceFilterGroupLabel = 0;
buildPatchInstanceFilterGroupLabel() {
  var o = new api.PatchInstanceFilterGroupLabel();
  buildCounterPatchInstanceFilterGroupLabel++;
  if (buildCounterPatchInstanceFilterGroupLabel < 3) {
    o.labels = buildUnnamed1619();
  }
  buildCounterPatchInstanceFilterGroupLabel--;
  return o;
}

checkPatchInstanceFilterGroupLabel(api.PatchInstanceFilterGroupLabel o) {
  buildCounterPatchInstanceFilterGroupLabel++;
  if (buildCounterPatchInstanceFilterGroupLabel < 3) {
    checkUnnamed1619(o.labels);
  }
  buildCounterPatchInstanceFilterGroupLabel--;
}

core.int buildCounterPatchJob = 0;
buildPatchJob() {
  var o = new api.PatchJob();
  buildCounterPatchJob++;
  if (buildCounterPatchJob < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.dryRun = true;
    o.duration = "foo";
    o.errorMessage = "foo";
    o.instanceDetailsSummary = buildPatchJobInstanceDetailsSummary();
    o.instanceFilter = buildPatchInstanceFilter();
    o.name = "foo";
    o.patchConfig = buildPatchConfig();
    o.patchDeployment = "foo";
    o.percentComplete = 42.0;
    o.rollout = buildPatchRollout();
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterPatchJob--;
  return o;
}

checkPatchJob(api.PatchJob o) {
  buildCounterPatchJob++;
  if (buildCounterPatchJob < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.dryRun, unittest.isTrue);
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    checkPatchJobInstanceDetailsSummary(o.instanceDetailsSummary);
    checkPatchInstanceFilter(o.instanceFilter);
    unittest.expect(o.name, unittest.equals('foo'));
    checkPatchConfig(o.patchConfig);
    unittest.expect(o.patchDeployment, unittest.equals('foo'));
    unittest.expect(o.percentComplete, unittest.equals(42.0));
    checkPatchRollout(o.rollout);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterPatchJob--;
}

core.int buildCounterPatchJobInstanceDetails = 0;
buildPatchJobInstanceDetails() {
  var o = new api.PatchJobInstanceDetails();
  buildCounterPatchJobInstanceDetails++;
  if (buildCounterPatchJobInstanceDetails < 3) {
    o.attemptCount = "foo";
    o.failureReason = "foo";
    o.instanceSystemId = "foo";
    o.name = "foo";
    o.state = "foo";
  }
  buildCounterPatchJobInstanceDetails--;
  return o;
}

checkPatchJobInstanceDetails(api.PatchJobInstanceDetails o) {
  buildCounterPatchJobInstanceDetails++;
  if (buildCounterPatchJobInstanceDetails < 3) {
    unittest.expect(o.attemptCount, unittest.equals('foo'));
    unittest.expect(o.failureReason, unittest.equals('foo'));
    unittest.expect(o.instanceSystemId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterPatchJobInstanceDetails--;
}

core.int buildCounterPatchJobInstanceDetailsSummary = 0;
buildPatchJobInstanceDetailsSummary() {
  var o = new api.PatchJobInstanceDetailsSummary();
  buildCounterPatchJobInstanceDetailsSummary++;
  if (buildCounterPatchJobInstanceDetailsSummary < 3) {
    o.ackedInstanceCount = "foo";
    o.applyingPatchesInstanceCount = "foo";
    o.downloadingPatchesInstanceCount = "foo";
    o.failedInstanceCount = "foo";
    o.inactiveInstanceCount = "foo";
    o.noAgentDetectedInstanceCount = "foo";
    o.notifiedInstanceCount = "foo";
    o.pendingInstanceCount = "foo";
    o.postPatchStepInstanceCount = "foo";
    o.prePatchStepInstanceCount = "foo";
    o.rebootingInstanceCount = "foo";
    o.startedInstanceCount = "foo";
    o.succeededInstanceCount = "foo";
    o.succeededRebootRequiredInstanceCount = "foo";
    o.timedOutInstanceCount = "foo";
  }
  buildCounterPatchJobInstanceDetailsSummary--;
  return o;
}

checkPatchJobInstanceDetailsSummary(api.PatchJobInstanceDetailsSummary o) {
  buildCounterPatchJobInstanceDetailsSummary++;
  if (buildCounterPatchJobInstanceDetailsSummary < 3) {
    unittest.expect(o.ackedInstanceCount, unittest.equals('foo'));
    unittest.expect(o.applyingPatchesInstanceCount, unittest.equals('foo'));
    unittest.expect(o.downloadingPatchesInstanceCount, unittest.equals('foo'));
    unittest.expect(o.failedInstanceCount, unittest.equals('foo'));
    unittest.expect(o.inactiveInstanceCount, unittest.equals('foo'));
    unittest.expect(o.noAgentDetectedInstanceCount, unittest.equals('foo'));
    unittest.expect(o.notifiedInstanceCount, unittest.equals('foo'));
    unittest.expect(o.pendingInstanceCount, unittest.equals('foo'));
    unittest.expect(o.postPatchStepInstanceCount, unittest.equals('foo'));
    unittest.expect(o.prePatchStepInstanceCount, unittest.equals('foo'));
    unittest.expect(o.rebootingInstanceCount, unittest.equals('foo'));
    unittest.expect(o.startedInstanceCount, unittest.equals('foo'));
    unittest.expect(o.succeededInstanceCount, unittest.equals('foo'));
    unittest.expect(
        o.succeededRebootRequiredInstanceCount, unittest.equals('foo'));
    unittest.expect(o.timedOutInstanceCount, unittest.equals('foo'));
  }
  buildCounterPatchJobInstanceDetailsSummary--;
}

core.int buildCounterPatchRollout = 0;
buildPatchRollout() {
  var o = new api.PatchRollout();
  buildCounterPatchRollout++;
  if (buildCounterPatchRollout < 3) {
    o.disruptionBudget = buildFixedOrPercent();
    o.mode = "foo";
  }
  buildCounterPatchRollout--;
  return o;
}

checkPatchRollout(api.PatchRollout o) {
  buildCounterPatchRollout++;
  if (buildCounterPatchRollout < 3) {
    checkFixedOrPercent(o.disruptionBudget);
    unittest.expect(o.mode, unittest.equals('foo'));
  }
  buildCounterPatchRollout--;
}

core.int buildCounterRecurringSchedule = 0;
buildRecurringSchedule() {
  var o = new api.RecurringSchedule();
  buildCounterRecurringSchedule++;
  if (buildCounterRecurringSchedule < 3) {
    o.endTime = "foo";
    o.frequency = "foo";
    o.lastExecuteTime = "foo";
    o.monthly = buildMonthlySchedule();
    o.nextExecuteTime = "foo";
    o.startTime = "foo";
    o.timeOfDay = buildTimeOfDay();
    o.timeZone = buildTimeZone();
    o.weekly = buildWeeklySchedule();
  }
  buildCounterRecurringSchedule--;
  return o;
}

checkRecurringSchedule(api.RecurringSchedule o) {
  buildCounterRecurringSchedule++;
  if (buildCounterRecurringSchedule < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.frequency, unittest.equals('foo'));
    unittest.expect(o.lastExecuteTime, unittest.equals('foo'));
    checkMonthlySchedule(o.monthly);
    unittest.expect(o.nextExecuteTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkTimeOfDay(o.timeOfDay);
    checkTimeZone(o.timeZone);
    checkWeeklySchedule(o.weekly);
  }
  buildCounterRecurringSchedule--;
}

core.int buildCounterTimeOfDay = 0;
buildTimeOfDay() {
  var o = new api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTimeZone = 0;
buildTimeZone() {
  var o = new api.TimeZone();
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    o.id = "foo";
    o.version = "foo";
  }
  buildCounterTimeZone--;
  return o;
}

checkTimeZone(api.TimeZone o) {
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterTimeZone--;
}

core.int buildCounterWeekDayOfMonth = 0;
buildWeekDayOfMonth() {
  var o = new api.WeekDayOfMonth();
  buildCounterWeekDayOfMonth++;
  if (buildCounterWeekDayOfMonth < 3) {
    o.dayOfWeek = "foo";
    o.weekOrdinal = 42;
  }
  buildCounterWeekDayOfMonth--;
  return o;
}

checkWeekDayOfMonth(api.WeekDayOfMonth o) {
  buildCounterWeekDayOfMonth++;
  if (buildCounterWeekDayOfMonth < 3) {
    unittest.expect(o.dayOfWeek, unittest.equals('foo'));
    unittest.expect(o.weekOrdinal, unittest.equals(42));
  }
  buildCounterWeekDayOfMonth--;
}

core.int buildCounterWeeklySchedule = 0;
buildWeeklySchedule() {
  var o = new api.WeeklySchedule();
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    o.dayOfWeek = "foo";
  }
  buildCounterWeeklySchedule--;
  return o;
}

checkWeeklySchedule(api.WeeklySchedule o) {
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    unittest.expect(o.dayOfWeek, unittest.equals('foo'));
  }
  buildCounterWeeklySchedule--;
}

buildUnnamed1620() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1620(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1621() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1621(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1622() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1622(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWindowsUpdateSettings = 0;
buildWindowsUpdateSettings() {
  var o = new api.WindowsUpdateSettings();
  buildCounterWindowsUpdateSettings++;
  if (buildCounterWindowsUpdateSettings < 3) {
    o.classifications = buildUnnamed1620();
    o.excludes = buildUnnamed1621();
    o.exclusivePatches = buildUnnamed1622();
  }
  buildCounterWindowsUpdateSettings--;
  return o;
}

checkWindowsUpdateSettings(api.WindowsUpdateSettings o) {
  buildCounterWindowsUpdateSettings++;
  if (buildCounterWindowsUpdateSettings < 3) {
    checkUnnamed1620(o.classifications);
    checkUnnamed1621(o.excludes);
    checkUnnamed1622(o.exclusivePatches);
  }
  buildCounterWindowsUpdateSettings--;
}

buildUnnamed1623() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1623(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1624() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1624(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterYumSettings = 0;
buildYumSettings() {
  var o = new api.YumSettings();
  buildCounterYumSettings++;
  if (buildCounterYumSettings < 3) {
    o.excludes = buildUnnamed1623();
    o.exclusivePackages = buildUnnamed1624();
    o.minimal = true;
    o.security = true;
  }
  buildCounterYumSettings--;
  return o;
}

checkYumSettings(api.YumSettings o) {
  buildCounterYumSettings++;
  if (buildCounterYumSettings < 3) {
    checkUnnamed1623(o.excludes);
    checkUnnamed1624(o.exclusivePackages);
    unittest.expect(o.minimal, unittest.isTrue);
    unittest.expect(o.security, unittest.isTrue);
  }
  buildCounterYumSettings--;
}

buildUnnamed1625() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1625(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1626() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1626(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1627() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1627(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1628() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1628(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterZypperSettings = 0;
buildZypperSettings() {
  var o = new api.ZypperSettings();
  buildCounterZypperSettings++;
  if (buildCounterZypperSettings < 3) {
    o.categories = buildUnnamed1625();
    o.excludes = buildUnnamed1626();
    o.exclusivePatches = buildUnnamed1627();
    o.severities = buildUnnamed1628();
    o.withOptional = true;
    o.withUpdate = true;
  }
  buildCounterZypperSettings--;
  return o;
}

checkZypperSettings(api.ZypperSettings o) {
  buildCounterZypperSettings++;
  if (buildCounterZypperSettings < 3) {
    checkUnnamed1625(o.categories);
    checkUnnamed1626(o.excludes);
    checkUnnamed1627(o.exclusivePatches);
    checkUnnamed1628(o.severities);
    unittest.expect(o.withOptional, unittest.isTrue);
    unittest.expect(o.withUpdate, unittest.isTrue);
  }
  buildCounterZypperSettings--;
}

main() {
  unittest.group("obj-schema-AptSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildAptSettings();
      var od = new api.AptSettings.fromJson(o.toJson());
      checkAptSettings(od);
    });
  });

  unittest.group("obj-schema-CancelPatchJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelPatchJobRequest();
      var od = new api.CancelPatchJobRequest.fromJson(o.toJson());
      checkCancelPatchJobRequest(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ExecStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecStep();
      var od = new api.ExecStep.fromJson(o.toJson());
      checkExecStep(od);
    });
  });

  unittest.group("obj-schema-ExecStepConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecStepConfig();
      var od = new api.ExecStepConfig.fromJson(o.toJson());
      checkExecStepConfig(od);
    });
  });

  unittest.group("obj-schema-ExecutePatchJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecutePatchJobRequest();
      var od = new api.ExecutePatchJobRequest.fromJson(o.toJson());
      checkExecutePatchJobRequest(od);
    });
  });

  unittest.group("obj-schema-FixedOrPercent", () {
    unittest.test("to-json--from-json", () {
      var o = buildFixedOrPercent();
      var od = new api.FixedOrPercent.fromJson(o.toJson());
      checkFixedOrPercent(od);
    });
  });

  unittest.group("obj-schema-GcsObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildGcsObject();
      var od = new api.GcsObject.fromJson(o.toJson());
      checkGcsObject(od);
    });
  });

  unittest.group("obj-schema-GooSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildGooSettings();
      var od = new api.GooSettings.fromJson(o.toJson());
      checkGooSettings(od);
    });
  });

  unittest.group("obj-schema-Inventory", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventory();
      var od = new api.Inventory.fromJson(o.toJson());
      checkInventory(od);
    });
  });

  unittest.group("obj-schema-InventoryItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryItem();
      var od = new api.InventoryItem.fromJson(o.toJson());
      checkInventoryItem(od);
    });
  });

  unittest.group("obj-schema-InventoryOsInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryOsInfo();
      var od = new api.InventoryOsInfo.fromJson(o.toJson());
      checkInventoryOsInfo(od);
    });
  });

  unittest.group("obj-schema-InventorySoftwarePackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventorySoftwarePackage();
      var od = new api.InventorySoftwarePackage.fromJson(o.toJson());
      checkInventorySoftwarePackage(od);
    });
  });

  unittest.group("obj-schema-InventoryVersionedPackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryVersionedPackage();
      var od = new api.InventoryVersionedPackage.fromJson(o.toJson());
      checkInventoryVersionedPackage(od);
    });
  });

  unittest.group("obj-schema-InventoryWindowsQuickFixEngineeringPackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryWindowsQuickFixEngineeringPackage();
      var od = new api.InventoryWindowsQuickFixEngineeringPackage.fromJson(
          o.toJson());
      checkInventoryWindowsQuickFixEngineeringPackage(od);
    });
  });

  unittest.group("obj-schema-InventoryWindowsUpdatePackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryWindowsUpdatePackage();
      var od = new api.InventoryWindowsUpdatePackage.fromJson(o.toJson());
      checkInventoryWindowsUpdatePackage(od);
    });
  });

  unittest.group(
      "obj-schema-InventoryWindowsUpdatePackageWindowsUpdateCategory", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryWindowsUpdatePackageWindowsUpdateCategory();
      var od =
          new api.InventoryWindowsUpdatePackageWindowsUpdateCategory.fromJson(
              o.toJson());
      checkInventoryWindowsUpdatePackageWindowsUpdateCategory(od);
    });
  });

  unittest.group("obj-schema-InventoryZypperPatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryZypperPatch();
      var od = new api.InventoryZypperPatch.fromJson(o.toJson());
      checkInventoryZypperPatch(od);
    });
  });

  unittest.group("obj-schema-ListPatchDeploymentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPatchDeploymentsResponse();
      var od = new api.ListPatchDeploymentsResponse.fromJson(o.toJson());
      checkListPatchDeploymentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListPatchJobInstanceDetailsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPatchJobInstanceDetailsResponse();
      var od = new api.ListPatchJobInstanceDetailsResponse.fromJson(o.toJson());
      checkListPatchJobInstanceDetailsResponse(od);
    });
  });

  unittest.group("obj-schema-ListPatchJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPatchJobsResponse();
      var od = new api.ListPatchJobsResponse.fromJson(o.toJson());
      checkListPatchJobsResponse(od);
    });
  });

  unittest.group("obj-schema-MonthlySchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonthlySchedule();
      var od = new api.MonthlySchedule.fromJson(o.toJson());
      checkMonthlySchedule(od);
    });
  });

  unittest.group("obj-schema-OneTimeSchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildOneTimeSchedule();
      var od = new api.OneTimeSchedule.fromJson(o.toJson());
      checkOneTimeSchedule(od);
    });
  });

  unittest.group("obj-schema-PatchConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchConfig();
      var od = new api.PatchConfig.fromJson(o.toJson());
      checkPatchConfig(od);
    });
  });

  unittest.group("obj-schema-PatchDeployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchDeployment();
      var od = new api.PatchDeployment.fromJson(o.toJson());
      checkPatchDeployment(od);
    });
  });

  unittest.group("obj-schema-PatchInstanceFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchInstanceFilter();
      var od = new api.PatchInstanceFilter.fromJson(o.toJson());
      checkPatchInstanceFilter(od);
    });
  });

  unittest.group("obj-schema-PatchInstanceFilterGroupLabel", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchInstanceFilterGroupLabel();
      var od = new api.PatchInstanceFilterGroupLabel.fromJson(o.toJson());
      checkPatchInstanceFilterGroupLabel(od);
    });
  });

  unittest.group("obj-schema-PatchJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchJob();
      var od = new api.PatchJob.fromJson(o.toJson());
      checkPatchJob(od);
    });
  });

  unittest.group("obj-schema-PatchJobInstanceDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchJobInstanceDetails();
      var od = new api.PatchJobInstanceDetails.fromJson(o.toJson());
      checkPatchJobInstanceDetails(od);
    });
  });

  unittest.group("obj-schema-PatchJobInstanceDetailsSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchJobInstanceDetailsSummary();
      var od = new api.PatchJobInstanceDetailsSummary.fromJson(o.toJson());
      checkPatchJobInstanceDetailsSummary(od);
    });
  });

  unittest.group("obj-schema-PatchRollout", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchRollout();
      var od = new api.PatchRollout.fromJson(o.toJson());
      checkPatchRollout(od);
    });
  });

  unittest.group("obj-schema-RecurringSchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecurringSchedule();
      var od = new api.RecurringSchedule.fromJson(o.toJson());
      checkRecurringSchedule(od);
    });
  });

  unittest.group("obj-schema-TimeOfDay", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeOfDay();
      var od = new api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od);
    });
  });

  unittest.group("obj-schema-TimeZone", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeZone();
      var od = new api.TimeZone.fromJson(o.toJson());
      checkTimeZone(od);
    });
  });

  unittest.group("obj-schema-WeekDayOfMonth", () {
    unittest.test("to-json--from-json", () {
      var o = buildWeekDayOfMonth();
      var od = new api.WeekDayOfMonth.fromJson(o.toJson());
      checkWeekDayOfMonth(od);
    });
  });

  unittest.group("obj-schema-WeeklySchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildWeeklySchedule();
      var od = new api.WeeklySchedule.fromJson(o.toJson());
      checkWeeklySchedule(od);
    });
  });

  unittest.group("obj-schema-WindowsUpdateSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildWindowsUpdateSettings();
      var od = new api.WindowsUpdateSettings.fromJson(o.toJson());
      checkWindowsUpdateSettings(od);
    });
  });

  unittest.group("obj-schema-YumSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildYumSettings();
      var od = new api.YumSettings.fromJson(o.toJson());
      checkYumSettings(od);
    });
  });

  unittest.group("obj-schema-ZypperSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildZypperSettings();
      var od = new api.ZypperSettings.fromJson(o.toJson());
      checkZypperSettings(od);
    });
  });

  unittest.group("resource-ProjectsPatchDeploymentsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchDeploymentsResourceApi res =
          new api.OsconfigApi(mock).projects.patchDeployments;
      var arg_request = buildPatchDeployment();
      var arg_parent = "foo";
      var arg_patchDeploymentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PatchDeployment.fromJson(json);
        checkPatchDeployment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["patchDeploymentId"].first,
            unittest.equals(arg_patchDeploymentId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPatchDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              patchDeploymentId: arg_patchDeploymentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPatchDeployment(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchDeploymentsResourceApi res =
          new api.OsconfigApi(mock).projects.patchDeployments;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchDeploymentsResourceApi res =
          new api.OsconfigApi(mock).projects.patchDeployments;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPatchDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPatchDeployment(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchDeploymentsResourceApi res =
          new api.OsconfigApi(mock).projects.patchDeployments;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPatchDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPatchDeploymentsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsPatchJobsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchJobsResourceApi res =
          new api.OsconfigApi(mock).projects.patchJobs;
      var arg_request = buildCancelPatchJobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelPatchJobRequest.fromJson(json);
        checkCancelPatchJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPatchJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPatchJob(response);
      })));
    });

    unittest.test("method--execute", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchJobsResourceApi res =
          new api.OsconfigApi(mock).projects.patchJobs;
      var arg_request = buildExecutePatchJobRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExecutePatchJobRequest.fromJson(json);
        checkExecutePatchJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPatchJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .execute(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPatchJob(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchJobsResourceApi res =
          new api.OsconfigApi(mock).projects.patchJobs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPatchJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPatchJob(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchJobsResourceApi res =
          new api.OsconfigApi(mock).projects.patchJobs;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPatchJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPatchJobsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsPatchJobsInstanceDetailsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsPatchJobsInstanceDetailsResourceApi res =
          new api.OsconfigApi(mock).projects.patchJobs.instanceDetails;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListPatchJobInstanceDetailsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPatchJobInstanceDetailsResponse(response);
      })));
    });
  });
}
