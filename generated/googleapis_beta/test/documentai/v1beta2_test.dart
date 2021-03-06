library googleapis_beta.documentai.v1beta2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/documentai/v1beta2.dart' as api;

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

core.int buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata = 0;
buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata() {
  var o = new api
      .GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata() {
  var o =
      new api.GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata <
      3) {
    o.createTime = "foo";
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata() {
  var o = new api
      .GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata = 0;
buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata() {
  var o =
      new api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata() {
  var o =
      new api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse =
    0;
buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse() {
  var o =
      new api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata = 0;
buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse = 0;
buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(
    api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata = 0;
buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata < 3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata < 3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse = 0;
buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(
    api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata() {
  var o =
      new api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse =
    0;
buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse() {
  var o =
      new api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse(
    api.GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse <
      3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata() {
  var o =
      new api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata() {
  var o = new api
      .GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata <
      3) {
    o.commonMetadata =
        buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata <
      3) {
    checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(
        o.commonMetadata);
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
}

buildUnnamed6120() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>();
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  return o;
}

checkUnnamed6120(
    core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(o[0]);
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse =
    0;
buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed6120();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    checkUnnamed6120(o.responses);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
}

buildUnnamed6121() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex>();
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  return o;
}

checkUnnamed6121(
    core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(o[1]);
}

buildUnnamed6122() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1Vertex>();
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  return o;
}

checkUnnamed6122(core.List<api.GoogleCloudDocumentaiV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1Vertex(o[0]);
  checkGoogleCloudDocumentaiV1beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly = 0;
buildGoogleCloudDocumentaiV1beta1BoundingPoly() {
  var o = new api.GoogleCloudDocumentaiV1beta1BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed6121();
    o.vertices = buildUnnamed6122();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1BoundingPoly(
    api.GoogleCloudDocumentaiV1beta1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    checkUnnamed6121(o.normalizedVertices);
    checkUnnamed6122(o.vertices);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
}

buildUnnamed6123() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

checkUnnamed6123(core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[1]);
}

buildUnnamed6124() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  return o;
}

checkUnnamed6124(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(o[1]);
}

buildUnnamed6125() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  return o;
}

checkUnnamed6125(core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPage(o[1]);
}

buildUnnamed6126() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  return o;
}

checkUnnamed6126(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(o[1]);
}

buildUnnamed6127() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  return o;
}

checkUnnamed6127(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(o[1]);
}

buildUnnamed6128() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  return o;
}

checkUnnamed6128(core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(o[1]);
}

buildUnnamed6129() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentTranslation>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTranslation());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTranslation());
  return o;
}

checkUnnamed6129(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTranslation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTranslation(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentTranslation(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Document = 0;
buildGoogleCloudDocumentaiV1beta1Document() {
  var o = new api.GoogleCloudDocumentaiV1beta1Document();
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    o.content = "foo";
    o.entities = buildUnnamed6123();
    o.entityRelations = buildUnnamed6124();
    o.error = buildGoogleRpcStatus();
    o.mimeType = "foo";
    o.pages = buildUnnamed6125();
    o.revisions = buildUnnamed6126();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
    o.text = "foo";
    o.textChanges = buildUnnamed6127();
    o.textStyles = buildUnnamed6128();
    o.translations = buildUnnamed6129();
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1Document(
    api.GoogleCloudDocumentaiV1beta1Document o) {
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed6123(o.entities);
    checkUnnamed6124(o.entityRelations);
    checkGoogleRpcStatus(o.error);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    checkUnnamed6125(o.pages);
    checkUnnamed6126(o.revisions);
    checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(o.shardInfo);
    unittest.expect(o.text, unittest.equals('foo'));
    checkUnnamed6127(o.textChanges);
    checkUnnamed6128(o.textStyles);
    checkUnnamed6129(o.translations);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
}

buildUnnamed6130() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

checkUnnamed6130(core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity = 0;
buildGoogleCloudDocumentaiV1beta1DocumentEntity() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = "foo";
    o.mentionId = "foo";
    o.mentionText = "foo";
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
    o.properties = buildUnnamed6130();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentEntity(
    api.GoogleCloudDocumentaiV1beta1DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.mentionId, unittest.equals('foo'));
    unittest.expect(o.mentionText, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
        o.normalizedValue);
    checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(o.pageAnchor);
    checkUnnamed6130(o.properties);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
    unittest.expect(o.redacted, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue =
    0;
buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(o.addressValue);
    checkGoogleTypeDate(o.dateValue);
    checkGoogleTypeDateTime(o.datetimeValue);
    checkGoogleTypeMoney(o.moneyValue);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation = 0;
buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation < 3) {
    o.objectId = "foo";
    o.relation = "foo";
    o.subjectId = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
    unittest.expect(o.relation, unittest.equals('foo'));
    unittest.expect(o.subjectId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation--;
}

buildUnnamed6131() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  return o;
}

checkUnnamed6131(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(o[1]);
}

buildUnnamed6132() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6132(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6133() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  return o;
}

checkUnnamed6133(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(o[1]);
}

buildUnnamed6134() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  return o;
}

checkUnnamed6134(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(o[1]);
}

buildUnnamed6135() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  return o;
}

checkUnnamed6135(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(o[1]);
}

buildUnnamed6136() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  return o;
}

checkUnnamed6136(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(o[1]);
}

buildUnnamed6137() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  return o;
}

checkUnnamed6137(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(o[1]);
}

buildUnnamed6138() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  return o;
}

checkUnnamed6138(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(o[1]);
}

buildUnnamed6139() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  return o;
}

checkUnnamed6139(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPage = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPage() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    o.blocks = buildUnnamed6131();
    o.detectedLanguages = buildUnnamed6132();
    o.dimension = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
    o.formFields = buildUnnamed6133();
    o.image = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.lines = buildUnnamed6134();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed6135();
    o.tables = buildUnnamed6136();
    o.tokens = buildUnnamed6137();
    o.transforms = buildUnnamed6138();
    o.visualElements = buildUnnamed6139();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPage(
    api.GoogleCloudDocumentaiV1beta1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    checkUnnamed6131(o.blocks);
    checkUnnamed6132(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(o.dimension);
    checkUnnamed6133(o.formFields);
    checkGoogleCloudDocumentaiV1beta1DocumentPageImage(o.image);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkUnnamed6134(o.lines);
    unittest.expect(o.pageNumber, unittest.equals(42));
    checkUnnamed6135(o.paragraphs);
    checkUnnamed6136(o.tables);
    checkUnnamed6137(o.tokens);
    checkUnnamed6138(o.transforms);
    checkUnnamed6139(o.visualElements);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
}

buildUnnamed6140() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  return o;
}

checkUnnamed6140(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed6140();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    checkUnnamed6140(o.pageRefs);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
    o.layoutId = "foo";
    o.layoutType = "foo";
    o.page = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.layoutId, unittest.equals('foo'));
    unittest.expect(o.layoutType, unittest.equals('foo'));
    unittest.expect(o.page, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef--;
}

buildUnnamed6141() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6141(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageBlock() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed6141();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta1DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    checkUnnamed6141(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage =
    0;
buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageDimension() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = "foo";
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta1DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension < 3) {
    unittest.expect(o.height, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension--;
}

buildUnnamed6142() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6142(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6143() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6143(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageFormField() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed6142();
    o.valueDetectedLanguages = buildUnnamed6143();
    o.valueType = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta1DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.fieldName);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.fieldValue);
    checkUnnamed6142(o.nameDetectedLanguages);
    checkUnnamed6143(o.valueDetectedLanguages);
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageImage() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage < 3) {
    o.content = "foo";
    o.height = 42;
    o.mimeType = "foo";
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta1DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageLayout() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
    o.confidence = 42.0;
    o.orientation = "foo";
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta1DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.orientation, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
}

buildUnnamed6144() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6144(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageLine() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed6144();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta1DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    checkUnnamed6144(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = "foo";
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix < 3) {
    unittest.expect(o.cols, unittest.equals(42));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.rows, unittest.equals(42));
    unittest.expect(o.type, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix--;
}

buildUnnamed6145() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6145(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed6145();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    checkUnnamed6145(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
}

buildUnnamed6146() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

checkUnnamed6146(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[1]);
}

buildUnnamed6147() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6147(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6148() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

checkUnnamed6148(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageTable() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed6146();
    o.detectedLanguages = buildUnnamed6147();
    o.headerRows = buildUnnamed6148();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    checkUnnamed6146(o.bodyRows);
    checkUnnamed6147(o.detectedLanguages);
    checkUnnamed6148(o.headerRows);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
}

buildUnnamed6149() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6149(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed6149();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    unittest.expect(o.colSpan, unittest.equals(42));
    checkUnnamed6149(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    unittest.expect(o.rowSpan, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
}

buildUnnamed6150() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  return o;
}

checkUnnamed6150(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed6150();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    checkUnnamed6150(o.cells);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
}

buildUnnamed6151() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6151(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageToken() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed6151();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta1DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
        o.detectedBreak);
    checkUnnamed6151(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak <
      3) {
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak--;
}

buildUnnamed6152() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6152(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed6152();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    checkUnnamed6152(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
}

buildUnnamed6153() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  return o;
}

checkUnnamed6153(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance = 0;
buildGoogleCloudDocumentaiV1beta1DocumentProvenance() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed6153();
    o.revision = 42;
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta1DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    unittest.expect(o.id, unittest.equals(42));
    checkUnnamed6153(o.parents);
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent = 0;
buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent < 3) {
    o.id = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent < 3) {
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.revision, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent--;
}

buildUnnamed6154() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed6154(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision = 0;
buildGoogleCloudDocumentaiV1beta1DocumentRevision() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    o.agent = "foo";
    o.createTime = "foo";
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
    o.id = "foo";
    o.parent = buildUnnamed6154();
    o.processor = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentRevision(
    api.GoogleCloudDocumentaiV1beta1DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(o.humanReview);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6154(o.parent);
    unittest.expect(o.processor, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview =
    0;
buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview < 3) {
    o.state = "foo";
    o.stateMessage = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo = 0;
buildGoogleCloudDocumentaiV1beta1DocumentShardInfo() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo < 3) {
    o.shardCount = "foo";
    o.shardIndex = "foo";
    o.textOffset = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta1DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo < 3) {
    unittest.expect(o.shardCount, unittest.equals('foo'));
    unittest.expect(o.shardIndex, unittest.equals('foo'));
    unittest.expect(o.textOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle = 0;
buildGoogleCloudDocumentaiV1beta1DocumentStyle() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
    o.fontWeight = "foo";
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.textDecoration = "foo";
    o.textStyle = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentStyle(
    api.GoogleCloudDocumentaiV1beta1DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor);
    checkGoogleTypeColor(o.color);
    checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(o.fontSize);
    unittest.expect(o.fontWeight, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.textDecoration, unittest.equals('foo'));
    unittest.expect(o.textStyle, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize = 0;
buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize < 3) {
    unittest.expect(o.size, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize--;
}

buildUnnamed6155() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  return o;
}

checkUnnamed6155(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor = 0;
buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    o.content = "foo";
    o.textSegments = buildUnnamed6155();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed6155(o.textSegments);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment =
    0;
buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = "foo";
    o.startIndex = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(o.endIndex, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment--;
}

buildUnnamed6156() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  return o;
}

checkUnnamed6156(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange = 0;
buildGoogleCloudDocumentaiV1beta1DocumentTextChange() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    o.changedText = "foo";
    o.provenance = buildUnnamed6156();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta1DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    unittest.expect(o.changedText, unittest.equals('foo'));
    checkUnnamed6156(o.provenance);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
}

buildUnnamed6157() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  return o;
}

checkUnnamed6157(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation = 0;
buildGoogleCloudDocumentaiV1beta1DocumentTranslation() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentTranslation();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation < 3) {
    o.languageCode = "foo";
    o.provenance = buildUnnamed6157();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.translatedText = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentTranslation(
    api.GoogleCloudDocumentaiV1beta1DocumentTranslation o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed6157(o.provenance);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.translatedText, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsDestination = 0;
buildGoogleCloudDocumentaiV1beta1GcsDestination() {
  var o = new api.GoogleCloudDocumentaiV1beta1GcsDestination();
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1GcsDestination(
    api.GoogleCloudDocumentaiV1beta1GcsDestination o) {
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsSource = 0;
buildGoogleCloudDocumentaiV1beta1GcsSource() {
  var o = new api.GoogleCloudDocumentaiV1beta1GcsSource();
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1GcsSource(
    api.GoogleCloudDocumentaiV1beta1GcsSource o) {
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1InputConfig = 0;
buildGoogleCloudDocumentaiV1beta1InputConfig() {
  var o = new api.GoogleCloudDocumentaiV1beta1InputConfig();
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1InputConfig < 3) {
    o.gcsSource = buildGoogleCloudDocumentaiV1beta1GcsSource();
    o.mimeType = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1InputConfig(
    api.GoogleCloudDocumentaiV1beta1InputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1InputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta1GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex = 0;
buildGoogleCloudDocumentaiV1beta1NormalizedVertex() {
  var o = new api.GoogleCloudDocumentaiV1beta1NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta1NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata = 0;
buildGoogleCloudDocumentaiV1beta1OperationMetadata() {
  var o = new api.GoogleCloudDocumentaiV1beta1OperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1OperationMetadata(
    api.GoogleCloudDocumentaiV1beta1OperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1OutputConfig = 0;
buildGoogleCloudDocumentaiV1beta1OutputConfig() {
  var o = new api.GoogleCloudDocumentaiV1beta1OutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDocumentaiV1beta1GcsDestination();
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1OutputConfig(
    api.GoogleCloudDocumentaiV1beta1OutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta1GcsDestination(o.gcsDestination);
    unittest.expect(o.pagesPerShard, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse = 0;
buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse < 3) {
    o.inputConfig = buildGoogleCloudDocumentaiV1beta1InputConfig();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta1OutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
    api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta1InputConfig(o.inputConfig);
    checkGoogleCloudDocumentaiV1beta1OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Vertex = 0;
buildGoogleCloudDocumentaiV1beta1Vertex() {
  var o = new api.GoogleCloudDocumentaiV1beta1Vertex();
  buildCounterGoogleCloudDocumentaiV1beta1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1Vertex--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1Vertex(
    api.GoogleCloudDocumentaiV1beta1Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1Vertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams = 0;
buildGoogleCloudDocumentaiV1beta2AutoMlParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2AutoMlParams();
  buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams < 3) {
    o.model = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2AutoMlParams(
    api.GoogleCloudDocumentaiV1beta2AutoMlParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams < 3) {
    unittest.expect(o.model, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams--;
}

buildUnnamed6158() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest>();
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest());
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest());
  return o;
}

checkUnnamed6158(
    core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(o[0]);
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest =
    0;
buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest() {
  var o = new api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest <
      3) {
    o.requests = buildUnnamed6158();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest(
    api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest <
      3) {
    checkUnnamed6158(o.requests);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest--;
}

buildUnnamed6159() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>();
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  return o;
}

checkUnnamed6159(
    core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(o[0]);
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse =
    0;
buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed6159();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    checkUnnamed6159(o.responses);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
}

buildUnnamed6160() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex>();
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  return o;
}

checkUnnamed6160(
    core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(o[1]);
}

buildUnnamed6161() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2Vertex>();
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  return o;
}

checkUnnamed6161(core.List<api.GoogleCloudDocumentaiV1beta2Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2Vertex(o[0]);
  checkGoogleCloudDocumentaiV1beta2Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly = 0;
buildGoogleCloudDocumentaiV1beta2BoundingPoly() {
  var o = new api.GoogleCloudDocumentaiV1beta2BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed6160();
    o.vertices = buildUnnamed6161();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2BoundingPoly(
    api.GoogleCloudDocumentaiV1beta2BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    checkUnnamed6160(o.normalizedVertices);
    checkUnnamed6161(o.vertices);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
}

buildUnnamed6162() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

checkUnnamed6162(core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[1]);
}

buildUnnamed6163() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  return o;
}

checkUnnamed6163(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(o[1]);
}

buildUnnamed6164() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  return o;
}

checkUnnamed6164(core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(o[1]);
}

buildUnnamed6165() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  return o;
}

checkUnnamed6165(core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPage(o[1]);
}

buildUnnamed6166() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  return o;
}

checkUnnamed6166(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(o[1]);
}

buildUnnamed6167() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  return o;
}

checkUnnamed6167(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(o[1]);
}

buildUnnamed6168() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  return o;
}

checkUnnamed6168(core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(o[1]);
}

buildUnnamed6169() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentTranslation>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTranslation());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTranslation());
  return o;
}

checkUnnamed6169(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTranslation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTranslation(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentTranslation(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Document = 0;
buildGoogleCloudDocumentaiV1beta2Document() {
  var o = new api.GoogleCloudDocumentaiV1beta2Document();
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    o.content = "foo";
    o.entities = buildUnnamed6162();
    o.entityRelations = buildUnnamed6163();
    o.error = buildGoogleRpcStatus();
    o.labels = buildUnnamed6164();
    o.mimeType = "foo";
    o.pages = buildUnnamed6165();
    o.revisions = buildUnnamed6166();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
    o.text = "foo";
    o.textChanges = buildUnnamed6167();
    o.textStyles = buildUnnamed6168();
    o.translations = buildUnnamed6169();
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2Document(
    api.GoogleCloudDocumentaiV1beta2Document o) {
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed6162(o.entities);
    checkUnnamed6163(o.entityRelations);
    checkGoogleRpcStatus(o.error);
    checkUnnamed6164(o.labels);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    checkUnnamed6165(o.pages);
    checkUnnamed6166(o.revisions);
    checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(o.shardInfo);
    unittest.expect(o.text, unittest.equals('foo'));
    checkUnnamed6167(o.textChanges);
    checkUnnamed6168(o.textStyles);
    checkUnnamed6169(o.translations);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
}

buildUnnamed6170() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

checkUnnamed6170(core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity = 0;
buildGoogleCloudDocumentaiV1beta2DocumentEntity() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = "foo";
    o.mentionId = "foo";
    o.mentionText = "foo";
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
    o.properties = buildUnnamed6170();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentEntity(
    api.GoogleCloudDocumentaiV1beta2DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.mentionId, unittest.equals('foo'));
    unittest.expect(o.mentionText, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
        o.normalizedValue);
    checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(o.pageAnchor);
    checkUnnamed6170(o.properties);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
    unittest.expect(o.redacted, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue =
    0;
buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(o.addressValue);
    checkGoogleTypeDate(o.dateValue);
    checkGoogleTypeDateTime(o.datetimeValue);
    checkGoogleTypeMoney(o.moneyValue);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation = 0;
buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation < 3) {
    o.objectId = "foo";
    o.relation = "foo";
    o.subjectId = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
    unittest.expect(o.relation, unittest.equals('foo'));
    unittest.expect(o.subjectId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel = 0;
buildGoogleCloudDocumentaiV1beta2DocumentLabel() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentLabel();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel < 3) {
    o.automlModel = "foo";
    o.confidence = 42.0;
    o.name = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentLabel(
    api.GoogleCloudDocumentaiV1beta2DocumentLabel o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel < 3) {
    unittest.expect(o.automlModel, unittest.equals('foo'));
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel--;
}

buildUnnamed6171() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  return o;
}

checkUnnamed6171(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(o[1]);
}

buildUnnamed6172() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6172(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6173() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  return o;
}

checkUnnamed6173(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(o[1]);
}

buildUnnamed6174() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  return o;
}

checkUnnamed6174(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(o[1]);
}

buildUnnamed6175() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  return o;
}

checkUnnamed6175(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(o[1]);
}

buildUnnamed6176() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  return o;
}

checkUnnamed6176(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(o[1]);
}

buildUnnamed6177() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  return o;
}

checkUnnamed6177(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(o[1]);
}

buildUnnamed6178() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  return o;
}

checkUnnamed6178(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(o[1]);
}

buildUnnamed6179() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  return o;
}

checkUnnamed6179(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPage = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPage() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    o.blocks = buildUnnamed6171();
    o.detectedLanguages = buildUnnamed6172();
    o.dimension = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
    o.formFields = buildUnnamed6173();
    o.image = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.lines = buildUnnamed6174();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed6175();
    o.tables = buildUnnamed6176();
    o.tokens = buildUnnamed6177();
    o.transforms = buildUnnamed6178();
    o.visualElements = buildUnnamed6179();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPage(
    api.GoogleCloudDocumentaiV1beta2DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    checkUnnamed6171(o.blocks);
    checkUnnamed6172(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(o.dimension);
    checkUnnamed6173(o.formFields);
    checkGoogleCloudDocumentaiV1beta2DocumentPageImage(o.image);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkUnnamed6174(o.lines);
    unittest.expect(o.pageNumber, unittest.equals(42));
    checkUnnamed6175(o.paragraphs);
    checkUnnamed6176(o.tables);
    checkUnnamed6177(o.tokens);
    checkUnnamed6178(o.transforms);
    checkUnnamed6179(o.visualElements);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
}

buildUnnamed6180() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  return o;
}

checkUnnamed6180(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed6180();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    checkUnnamed6180(o.pageRefs);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.layoutId = "foo";
    o.layoutType = "foo";
    o.page = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(o.boundingPoly);
    unittest.expect(o.layoutId, unittest.equals('foo'));
    unittest.expect(o.layoutType, unittest.equals('foo'));
    unittest.expect(o.page, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef--;
}

buildUnnamed6181() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6181(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageBlock() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed6181();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta2DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    checkUnnamed6181(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage =
    0;
buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageDimension() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = "foo";
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta2DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension < 3) {
    unittest.expect(o.height, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension--;
}

buildUnnamed6182() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6182(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6183() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6183(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageFormField() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed6182();
    o.valueDetectedLanguages = buildUnnamed6183();
    o.valueType = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta2DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.fieldName);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.fieldValue);
    checkUnnamed6182(o.nameDetectedLanguages);
    checkUnnamed6183(o.valueDetectedLanguages);
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageImage() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage < 3) {
    o.content = "foo";
    o.height = 42;
    o.mimeType = "foo";
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta2DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageLayout() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.confidence = 42.0;
    o.orientation = "foo";
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta2DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.orientation, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
}

buildUnnamed6184() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6184(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageLine() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed6184();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta2DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    checkUnnamed6184(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = "foo";
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix < 3) {
    unittest.expect(o.cols, unittest.equals(42));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.rows, unittest.equals(42));
    unittest.expect(o.type, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix--;
}

buildUnnamed6185() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6185(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed6185();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    checkUnnamed6185(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
}

buildUnnamed6186() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

checkUnnamed6186(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[1]);
}

buildUnnamed6187() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6187(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6188() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

checkUnnamed6188(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageTable() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed6186();
    o.detectedLanguages = buildUnnamed6187();
    o.headerRows = buildUnnamed6188();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    checkUnnamed6186(o.bodyRows);
    checkUnnamed6187(o.detectedLanguages);
    checkUnnamed6188(o.headerRows);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
}

buildUnnamed6189() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6189(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed6189();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    unittest.expect(o.colSpan, unittest.equals(42));
    checkUnnamed6189(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    unittest.expect(o.rowSpan, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
}

buildUnnamed6190() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  return o;
}

checkUnnamed6190(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed6190();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    checkUnnamed6190(o.cells);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
}

buildUnnamed6191() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6191(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageToken() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed6191();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta2DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
        o.detectedBreak);
    checkUnnamed6191(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak <
      3) {
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak--;
}

buildUnnamed6192() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6192(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed6192();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    checkUnnamed6192(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
}

buildUnnamed6193() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  return o;
}

checkUnnamed6193(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance = 0;
buildGoogleCloudDocumentaiV1beta2DocumentProvenance() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed6193();
    o.revision = 42;
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta2DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    unittest.expect(o.id, unittest.equals(42));
    checkUnnamed6193(o.parents);
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent = 0;
buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent < 3) {
    o.id = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent < 3) {
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.revision, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent--;
}

buildUnnamed6194() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed6194(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision = 0;
buildGoogleCloudDocumentaiV1beta2DocumentRevision() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    o.agent = "foo";
    o.createTime = "foo";
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
    o.id = "foo";
    o.parent = buildUnnamed6194();
    o.processor = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentRevision(
    api.GoogleCloudDocumentaiV1beta2DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(o.humanReview);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6194(o.parent);
    unittest.expect(o.processor, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview =
    0;
buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview < 3) {
    o.state = "foo";
    o.stateMessage = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo = 0;
buildGoogleCloudDocumentaiV1beta2DocumentShardInfo() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo < 3) {
    o.shardCount = "foo";
    o.shardIndex = "foo";
    o.textOffset = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta2DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo < 3) {
    unittest.expect(o.shardCount, unittest.equals('foo'));
    unittest.expect(o.shardIndex, unittest.equals('foo'));
    unittest.expect(o.textOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle = 0;
buildGoogleCloudDocumentaiV1beta2DocumentStyle() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
    o.fontWeight = "foo";
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.textDecoration = "foo";
    o.textStyle = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentStyle(
    api.GoogleCloudDocumentaiV1beta2DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor);
    checkGoogleTypeColor(o.color);
    checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(o.fontSize);
    unittest.expect(o.fontWeight, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.textDecoration, unittest.equals('foo'));
    unittest.expect(o.textStyle, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize = 0;
buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize < 3) {
    unittest.expect(o.size, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize--;
}

buildUnnamed6195() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  return o;
}

checkUnnamed6195(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor = 0;
buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    o.content = "foo";
    o.textSegments = buildUnnamed6195();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed6195(o.textSegments);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment =
    0;
buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = "foo";
    o.startIndex = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(o.endIndex, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment--;
}

buildUnnamed6196() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  return o;
}

checkUnnamed6196(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange = 0;
buildGoogleCloudDocumentaiV1beta2DocumentTextChange() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    o.changedText = "foo";
    o.provenance = buildUnnamed6196();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta2DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    unittest.expect(o.changedText, unittest.equals('foo'));
    checkUnnamed6196(o.provenance);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
}

buildUnnamed6197() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  return o;
}

checkUnnamed6197(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation = 0;
buildGoogleCloudDocumentaiV1beta2DocumentTranslation() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentTranslation();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation < 3) {
    o.languageCode = "foo";
    o.provenance = buildUnnamed6197();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.translatedText = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentTranslation(
    api.GoogleCloudDocumentaiV1beta2DocumentTranslation o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed6197(o.provenance);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.translatedText, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams = 0;
buildGoogleCloudDocumentaiV1beta2EntityExtractionParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2EntityExtractionParams();
  buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams < 3) {
    o.enabled = true;
    o.modelVersion = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2EntityExtractionParams(
    api.GoogleCloudDocumentaiV1beta2EntityExtractionParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.modelVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams--;
}

buildUnnamed6198() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2KeyValuePairHint>();
  o.add(buildGoogleCloudDocumentaiV1beta2KeyValuePairHint());
  o.add(buildGoogleCloudDocumentaiV1beta2KeyValuePairHint());
  return o;
}

checkUnnamed6198(
    core.List<api.GoogleCloudDocumentaiV1beta2KeyValuePairHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2KeyValuePairHint(o[0]);
  checkGoogleCloudDocumentaiV1beta2KeyValuePairHint(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams = 0;
buildGoogleCloudDocumentaiV1beta2FormExtractionParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2FormExtractionParams();
  buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams < 3) {
    o.enabled = true;
    o.keyValuePairHints = buildUnnamed6198();
    o.modelVersion = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2FormExtractionParams(
    api.GoogleCloudDocumentaiV1beta2FormExtractionParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    checkUnnamed6198(o.keyValuePairHints);
    unittest.expect(o.modelVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsDestination = 0;
buildGoogleCloudDocumentaiV1beta2GcsDestination() {
  var o = new api.GoogleCloudDocumentaiV1beta2GcsDestination();
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2GcsDestination(
    api.GoogleCloudDocumentaiV1beta2GcsDestination o) {
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsSource = 0;
buildGoogleCloudDocumentaiV1beta2GcsSource() {
  var o = new api.GoogleCloudDocumentaiV1beta2GcsSource();
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2GcsSource(
    api.GoogleCloudDocumentaiV1beta2GcsSource o) {
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2InputConfig = 0;
buildGoogleCloudDocumentaiV1beta2InputConfig() {
  var o = new api.GoogleCloudDocumentaiV1beta2InputConfig();
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2InputConfig < 3) {
    o.contents = "foo";
    o.gcsSource = buildGoogleCloudDocumentaiV1beta2GcsSource();
    o.mimeType = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2InputConfig(
    api.GoogleCloudDocumentaiV1beta2InputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2InputConfig < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig--;
}

buildUnnamed6199() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6199(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint = 0;
buildGoogleCloudDocumentaiV1beta2KeyValuePairHint() {
  var o = new api.GoogleCloudDocumentaiV1beta2KeyValuePairHint();
  buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint++;
  if (buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint < 3) {
    o.key = "foo";
    o.valueTypes = buildUnnamed6199();
  }
  buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2KeyValuePairHint(
    api.GoogleCloudDocumentaiV1beta2KeyValuePairHint o) {
  buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint++;
  if (buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed6199(o.valueTypes);
  }
  buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex = 0;
buildGoogleCloudDocumentaiV1beta2NormalizedVertex() {
  var o = new api.GoogleCloudDocumentaiV1beta2NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta2NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex--;
}

buildUnnamed6200() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6200(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OcrParams = 0;
buildGoogleCloudDocumentaiV1beta2OcrParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2OcrParams();
  buildCounterGoogleCloudDocumentaiV1beta2OcrParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OcrParams < 3) {
    o.languageHints = buildUnnamed6200();
  }
  buildCounterGoogleCloudDocumentaiV1beta2OcrParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2OcrParams(
    api.GoogleCloudDocumentaiV1beta2OcrParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2OcrParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OcrParams < 3) {
    checkUnnamed6200(o.languageHints);
  }
  buildCounterGoogleCloudDocumentaiV1beta2OcrParams--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata = 0;
buildGoogleCloudDocumentaiV1beta2OperationMetadata() {
  var o = new api.GoogleCloudDocumentaiV1beta2OperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2OperationMetadata(
    api.GoogleCloudDocumentaiV1beta2OperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OutputConfig = 0;
buildGoogleCloudDocumentaiV1beta2OutputConfig() {
  var o = new api.GoogleCloudDocumentaiV1beta2OutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDocumentaiV1beta2GcsDestination();
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2OutputConfig(
    api.GoogleCloudDocumentaiV1beta2OutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta2GcsDestination(o.gcsDestination);
    unittest.expect(o.pagesPerShard, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest = 0;
buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest() {
  var o = new api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest();
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest < 3) {
    o.automlParams = buildGoogleCloudDocumentaiV1beta2AutoMlParams();
    o.documentType = "foo";
    o.entityExtractionParams =
        buildGoogleCloudDocumentaiV1beta2EntityExtractionParams();
    o.formExtractionParams =
        buildGoogleCloudDocumentaiV1beta2FormExtractionParams();
    o.inputConfig = buildGoogleCloudDocumentaiV1beta2InputConfig();
    o.ocrParams = buildGoogleCloudDocumentaiV1beta2OcrParams();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta2OutputConfig();
    o.parent = "foo";
    o.tableExtractionParams =
        buildGoogleCloudDocumentaiV1beta2TableExtractionParams();
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(
    api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest < 3) {
    checkGoogleCloudDocumentaiV1beta2AutoMlParams(o.automlParams);
    unittest.expect(o.documentType, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2EntityExtractionParams(
        o.entityExtractionParams);
    checkGoogleCloudDocumentaiV1beta2FormExtractionParams(
        o.formExtractionParams);
    checkGoogleCloudDocumentaiV1beta2InputConfig(o.inputConfig);
    checkGoogleCloudDocumentaiV1beta2OcrParams(o.ocrParams);
    checkGoogleCloudDocumentaiV1beta2OutputConfig(o.outputConfig);
    unittest.expect(o.parent, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2TableExtractionParams(
        o.tableExtractionParams);
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse = 0;
buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse < 3) {
    o.inputConfig = buildGoogleCloudDocumentaiV1beta2InputConfig();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta2OutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
    api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta2InputConfig(o.inputConfig);
    checkGoogleCloudDocumentaiV1beta2OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint = 0;
buildGoogleCloudDocumentaiV1beta2TableBoundHint() {
  var o = new api.GoogleCloudDocumentaiV1beta2TableBoundHint();
  buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint++;
  if (buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint < 3) {
    o.boundingBox = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.pageNumber = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2TableBoundHint(
    api.GoogleCloudDocumentaiV1beta2TableBoundHint o) {
  buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint++;
  if (buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(o.boundingBox);
    unittest.expect(o.pageNumber, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint--;
}

buildUnnamed6201() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6201(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6202() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2TableBoundHint>();
  o.add(buildGoogleCloudDocumentaiV1beta2TableBoundHint());
  o.add(buildGoogleCloudDocumentaiV1beta2TableBoundHint());
  return o;
}

checkUnnamed6202(core.List<api.GoogleCloudDocumentaiV1beta2TableBoundHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2TableBoundHint(o[0]);
  checkGoogleCloudDocumentaiV1beta2TableBoundHint(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams = 0;
buildGoogleCloudDocumentaiV1beta2TableExtractionParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2TableExtractionParams();
  buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams < 3) {
    o.enabled = true;
    o.headerHints = buildUnnamed6201();
    o.modelVersion = "foo";
    o.tableBoundHints = buildUnnamed6202();
  }
  buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2TableExtractionParams(
    api.GoogleCloudDocumentaiV1beta2TableExtractionParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    checkUnnamed6201(o.headerHints);
    unittest.expect(o.modelVersion, unittest.equals('foo'));
    checkUnnamed6202(o.tableBoundHints);
  }
  buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Vertex = 0;
buildGoogleCloudDocumentaiV1beta2Vertex() {
  var o = new api.GoogleCloudDocumentaiV1beta2Vertex();
  buildCounterGoogleCloudDocumentaiV1beta2Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2Vertex--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2Vertex(
    api.GoogleCloudDocumentaiV1beta2Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta2Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2Vertex--;
}

buildUnnamed6203() {
  var o = new core.List<
      api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>();
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  return o;
}

checkUnnamed6203(
    core.List<
            api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[0]);
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata = 0;
buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata() {
  var o = new api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    o.createTime = "foo";
    o.individualProcessStatuses = buildUnnamed6203();
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(
    api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed6203(o.individualProcessStatuses);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus =
    0;
buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus() {
  var o = new api
      .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus <
      3) {
    o.humanReviewOperation = "foo";
    o.inputGcsSource = "foo";
    o.outputGcsDestination = "foo";
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
    api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus <
      3) {
    unittest.expect(o.humanReviewOperation, unittest.equals('foo'));
    unittest.expect(o.inputGcsSource, unittest.equals('foo'));
    unittest.expect(o.outputGcsDestination, unittest.equals('foo'));
    checkGoogleRpcStatus(o.status);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse = 0;
buildGoogleCloudDocumentaiV1beta3BatchProcessResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta3BatchProcessResponse();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(
    api.GoogleCloudDocumentaiV1beta3BatchProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata = 0;
buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata() {
  var o = new api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata <
      3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse = 0;
buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse < 3) {
    o.gcsDestination = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse < 3) {
    unittest.expect(o.gcsDestination, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse--;
}

buildUnnamed6204() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6204(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed6205() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6205(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed6204();
    o.name = "foo";
    o.response = buildUnnamed6205();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed6204(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6205(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed6206() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6206(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed6207() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6206());
  o.add(buildUnnamed6206());
  return o;
}

checkUnnamed6207(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6206(o[0]);
  checkUnnamed6206(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6207();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6207(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeColor = 0;
buildGoogleTypeColor() {
  var o = new api.GoogleTypeColor();
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGoogleTypeColor--;
  return o;
}

checkGoogleTypeColor(api.GoogleTypeColor o) {
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    unittest.expect(o.alpha, unittest.equals(42.0));
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterGoogleTypeColor--;
}

core.int buildCounterGoogleTypeDate = 0;
buildGoogleTypeDate() {
  var o = new api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeDateTime = 0;
buildGoogleTypeDateTime() {
  var o = new api.GoogleTypeDateTime();
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildGoogleTypeTimeZone();
    o.utcOffset = "foo";
    o.year = 42;
  }
  buildCounterGoogleTypeDateTime--;
  return o;
}

checkGoogleTypeDateTime(api.GoogleTypeDateTime o) {
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
    checkGoogleTypeTimeZone(o.timeZone);
    unittest.expect(o.utcOffset, unittest.equals('foo'));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterGoogleTypeDateTime--;
}

core.int buildCounterGoogleTypeMoney = 0;
buildGoogleTypeMoney() {
  var o = new api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterGoogleTypeMoney--;
}

buildUnnamed6208() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6208(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6209() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6209(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleTypePostalAddress = 0;
buildGoogleTypePostalAddress() {
  var o = new api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed6208();
    o.administrativeArea = "foo";
    o.languageCode = "foo";
    o.locality = "foo";
    o.organization = "foo";
    o.postalCode = "foo";
    o.recipients = buildUnnamed6209();
    o.regionCode = "foo";
    o.revision = 42;
    o.sortingCode = "foo";
    o.sublocality = "foo";
  }
  buildCounterGoogleTypePostalAddress--;
  return o;
}

checkGoogleTypePostalAddress(api.GoogleTypePostalAddress o) {
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    checkUnnamed6208(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkUnnamed6209(o.recipients);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.sublocality, unittest.equals('foo'));
  }
  buildCounterGoogleTypePostalAddress--;
}

core.int buildCounterGoogleTypeTimeZone = 0;
buildGoogleTypeTimeZone() {
  var o = new api.GoogleTypeTimeZone();
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    o.id = "foo";
    o.version = "foo";
  }
  buildCounterGoogleTypeTimeZone--;
  return o;
}

checkGoogleTypeTimeZone(api.GoogleTypeTimeZone o) {
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleTypeTimeZone--;
}

main() {
  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3CommonOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
      var od = new api
              .GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
      var od =
          new api.GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1BoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1Document", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1Document();
      var od =
          new api.GoogleCloudDocumentaiV1beta1Document.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1Document(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntity();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentEntity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPage();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageBlock",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageBlock();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDimension",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageFormField",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageFormField();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentPageFormField.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLayout",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageLine();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageLine(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageMatrix",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageParagraph",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTable",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTable();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageTable(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageToken",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageToken();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageToken(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageVisualElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenance",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentProvenance(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenanceParent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentRevision();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentRevision(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentShardInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentStyle();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentStyle(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyleFontSize",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextChange",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextChange();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentTextChange.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentTextChange(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentTranslation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTranslation();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentTranslation.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentTranslation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1GcsDestination();
      var od = new api.GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1GcsSource();
      var od =
          new api.GoogleCloudDocumentaiV1beta1GcsSource.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1GcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1InputConfig();
      var od =
          new api.GoogleCloudDocumentaiV1beta1InputConfig.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1InputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1NormalizedVertex();
      var od = new api.GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1NormalizedVertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1OperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1OperationMetadata();
      var od = new api.GoogleCloudDocumentaiV1beta1OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1OutputConfig();
      var od =
          new api.GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1OutputConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1ProcessDocumentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
      var od =
          new api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1Vertex();
      var od = new api.GoogleCloudDocumentaiV1beta1Vertex.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1Vertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2AutoMlParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2AutoMlParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2AutoMlParams.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2AutoMlParams(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();
      var od = new api
              .GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
      var od = new api
              .GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
      var od =
          new api.GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2BoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2Document", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2Document();
      var od =
          new api.GoogleCloudDocumentaiV1beta2Document.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2Document(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntity();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentEntity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentLabel", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentLabel();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentLabel(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPage();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageBlock",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageBlock();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDimension",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageFormField",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageFormField();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentPageFormField.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLayout",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageLine();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageLine(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageMatrix",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageParagraph",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTable",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTable();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageTable(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageToken",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageToken();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageToken(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageVisualElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageVisualElement.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenance",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentProvenance(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenanceParent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentRevision();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentRevision(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentShardInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentStyle();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentStyle(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyleFontSize",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextChange",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextChange();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentTextChange.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentTextChange(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentTranslation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTranslation();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentTranslation.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentTranslation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2EntityExtractionParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2EntityExtractionParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2EntityExtractionParams.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2EntityExtractionParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2FormExtractionParams",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2FormExtractionParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2FormExtractionParams.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2FormExtractionParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2GcsDestination();
      var od = new api.GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2GcsSource();
      var od =
          new api.GoogleCloudDocumentaiV1beta2GcsSource.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2GcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2InputConfig();
      var od =
          new api.GoogleCloudDocumentaiV1beta2InputConfig.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2InputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2KeyValuePairHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2KeyValuePairHint();
      var od = new api.GoogleCloudDocumentaiV1beta2KeyValuePairHint.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2KeyValuePairHint(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2NormalizedVertex();
      var od = new api.GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2NormalizedVertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2OcrParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2OcrParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2OcrParams.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2OcrParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2OperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2OperationMetadata();
      var od = new api.GoogleCloudDocumentaiV1beta2OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2OutputConfig();
      var od =
          new api.GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2OutputConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2ProcessDocumentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest();
      var od =
          new api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2ProcessDocumentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
      var od =
          new api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2TableBoundHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2TableBoundHint();
      var od = new api.GoogleCloudDocumentaiV1beta2TableBoundHint.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2TableBoundHint(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2TableExtractionParams",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2TableExtractionParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2TableExtractionParams.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2TableExtractionParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2Vertex();
      var od = new api.GoogleCloudDocumentaiV1beta2Vertex.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2Vertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata();
      var od =
          new api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
      var od = new api
              .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessResponse();
      var od =
          new api.GoogleCloudDocumentaiV1beta3BatchProcessResponse.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
      var od =
          new api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeColor", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeColor();
      var od = new api.GoogleTypeColor.fromJson(o.toJson());
      checkGoogleTypeColor(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeDate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeDate();
      var od = new api.GoogleTypeDate.fromJson(o.toJson());
      checkGoogleTypeDate(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeDateTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeDateTime();
      var od = new api.GoogleTypeDateTime.fromJson(o.toJson());
      checkGoogleTypeDateTime(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeMoney", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeMoney();
      var od = new api.GoogleTypeMoney.fromJson(o.toJson());
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group("obj-schema-GoogleTypePostalAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypePostalAddress();
      var od = new api.GoogleTypePostalAddress.fromJson(o.toJson());
      checkGoogleTypePostalAddress(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeTimeZone", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeTimeZone();
      var od = new api.GoogleTypeTimeZone.fromJson(o.toJson());
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group("resource-ProjectsDocumentsResourceApi", () {
    unittest.test("method--batchProcess", () {
      var mock = new HttpServerMock();
      api.ProjectsDocumentsResourceApi res =
          new api.DocumentaiApi(mock).projects.documents;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest.fromJson(
            json);
        checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchProcess(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--process", () {
      var mock = new HttpServerMock();
      api.ProjectsDocumentsResourceApi res =
          new api.DocumentaiApi(mock).projects.documents;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.fromJson(
                json);
        checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
        var resp =
            convert.json.encode(buildGoogleCloudDocumentaiV1beta2Document());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .process(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDocumentaiV1beta2Document(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDocumentsResourceApi", () {
    unittest.test("method--batchProcess", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDocumentsResourceApi res =
          new api.DocumentaiApi(mock).projects.locations.documents;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest.fromJson(
            json);
        checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchProcess(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--process", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDocumentsResourceApi res =
          new api.DocumentaiApi(mock).projects.locations.documents;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.fromJson(
                json);
        checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
        var resp =
            convert.json.encode(buildGoogleCloudDocumentaiV1beta2Document());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .process(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDocumentaiV1beta2Document(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.DocumentaiApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DocumentaiApi(mock).projects.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });
}
