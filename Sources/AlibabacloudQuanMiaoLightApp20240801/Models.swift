import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GenerateBroadcastNewsRequest : Tea.TeaModel {
    public var prompt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("prompt") {
            self.prompt = dict["prompt"] as! String
        }
    }
}

public class GenerateBroadcastNewsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class HotTopicSummaries : Tea.TeaModel {
            public class Images : Tea.TeaModel {
                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("url") {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public var category: String?

            public var hotTopic: String?

            public var hotTopicVersion: String?

            public var hotValue: Double?

            public var id: String?

            public var images: [GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries.Images]?

            public var textSummary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.hotTopic != nil {
                    map["hotTopic"] = self.hotTopic!
                }
                if self.hotTopicVersion != nil {
                    map["hotTopicVersion"] = self.hotTopicVersion!
                }
                if self.hotValue != nil {
                    map["hotValue"] = self.hotValue!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.images != nil {
                    var tmp : [Any] = []
                    for k in self.images! {
                        tmp.append(k.toMap())
                    }
                    map["images"] = tmp
                }
                if self.textSummary != nil {
                    map["textSummary"] = self.textSummary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category") {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("hotTopic") {
                    self.hotTopic = dict["hotTopic"] as! String
                }
                if dict.keys.contains("hotTopicVersion") {
                    self.hotTopicVersion = dict["hotTopicVersion"] as! String
                }
                if dict.keys.contains("hotValue") {
                    self.hotValue = dict["hotValue"] as! Double
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("images") {
                    var tmp : [GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries.Images] = []
                    for v in dict["images"] as! [Any] {
                        var model = GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries.Images()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.images = tmp
                }
                if dict.keys.contains("textSummary") {
                    self.textSummary = dict["textSummary"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var hotTopicSummaries: [GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries]?

        public var sessionId: String?

        public var taskId: String?

        public var text: String?

        public var usage: GenerateBroadcastNewsResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hotTopicSummaries != nil {
                var tmp : [Any] = []
                for k in self.hotTopicSummaries! {
                    tmp.append(k.toMap())
                }
                map["hotTopicSummaries"] = tmp
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("hotTopicSummaries") {
                var tmp : [GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries] = []
                for v in dict["hotTopicSummaries"] as! [Any] {
                    var model = GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hotTopicSummaries = tmp
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("text") {
                self.text = dict["text"] as! String
            }
            if dict.keys.contains("usage") {
                var model = GenerateBroadcastNewsResponseBody.Data.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var code: String?

    public var data: GenerateBroadcastNewsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GenerateBroadcastNewsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GenerateBroadcastNewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateBroadcastNewsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateBroadcastNewsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateOutputFormatRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tagDefinePrompt") {
                self.tagDefinePrompt = dict["tagDefinePrompt"] as! String
            }
            if dict.keys.contains("tagName") {
                self.tagName = dict["tagName"] as! String
            }
        }
    }
    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var tags: [GenerateOutputFormatRequest.Tags]?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("businessType") {
            self.businessType = dict["businessType"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("extraInfo") {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [GenerateOutputFormatRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = GenerateOutputFormatRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("taskDescription") {
            self.taskDescription = dict["taskDescription"] as! String
        }
    }
}

public class GenerateOutputFormatShrinkRequest : Tea.TeaModel {
    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var tagsShrink: String?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("businessType") {
            self.businessType = dict["businessType"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("extraInfo") {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("tags") {
            self.tagsShrink = dict["tags"] as! String
        }
        if dict.keys.contains("taskDescription") {
            self.taskDescription = dict["taskDescription"] as! String
        }
    }
}

public class GenerateOutputFormatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var outputFormat: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.outputFormat != nil {
                map["outputFormat"] = self.outputFormat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("outputFormat") {
                self.outputFormat = dict["outputFormat"] as! String
            }
        }
    }
    public var code: String?

    public var data: GenerateOutputFormatResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GenerateOutputFormatResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GenerateOutputFormatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateOutputFormatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateOutputFormatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotTopicSummariesRequest : Tea.TeaModel {
    public var category: String?

    public var hotTopic: String?

    public var hotTopicVersion: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.hotTopic != nil {
            map["hotTopic"] = self.hotTopic!
        }
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("hotTopic") {
            self.hotTopic = dict["hotTopic"] as! String
        }
        if dict.keys.contains("hotTopicVersion") {
            self.hotTopicVersion = dict["hotTopicVersion"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListHotTopicSummariesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class News : Tea.TeaModel {
            public class Comments : Tea.TeaModel {
                public var text: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                }
            }
            public var comments: [ListHotTopicSummariesResponseBody.Data.News.Comments]?

            public var content: String?

            public var pubTime: String?

            public var title: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    var tmp : [Any] = []
                    for k in self.comments! {
                        tmp.append(k.toMap())
                    }
                    map["comments"] = tmp
                }
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.pubTime != nil {
                    map["pubTime"] = self.pubTime!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("comments") {
                    var tmp : [ListHotTopicSummariesResponseBody.Data.News.Comments] = []
                    for v in dict["comments"] as! [Any] {
                        var model = ListHotTopicSummariesResponseBody.Data.News.Comments()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.comments = tmp
                }
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("pubTime") {
                    self.pubTime = dict["pubTime"] as! String
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class Summary : Tea.TeaModel {
            public class Summaries : Tea.TeaModel {
                public var summary: String?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.summary != nil {
                        map["summary"] = self.summary!
                    }
                    if self.title != nil {
                        map["title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("summary") {
                        self.summary = dict["summary"] as! String
                    }
                    if dict.keys.contains("title") {
                        self.title = dict["title"] as! String
                    }
                }
            }
            public var summaries: [ListHotTopicSummariesResponseBody.Data.Summary.Summaries]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.summaries != nil {
                    var tmp : [Any] = []
                    for k in self.summaries! {
                        tmp.append(k.toMap())
                    }
                    map["summaries"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("summaries") {
                    var tmp : [ListHotTopicSummariesResponseBody.Data.Summary.Summaries] = []
                    for v in dict["summaries"] as! [Any] {
                        var model = ListHotTopicSummariesResponseBody.Data.Summary.Summaries()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.summaries = tmp
                }
            }
        }
        public var category: String?

        public var hotTopic: String?

        public var hotTopicVersion: String?

        public var hotValue: Double?

        public var id: String?

        public var news: [ListHotTopicSummariesResponseBody.Data.News]?

        public var summary: ListHotTopicSummariesResponseBody.Data.Summary?

        public var textSummary: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.summary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.hotTopic != nil {
                map["hotTopic"] = self.hotTopic!
            }
            if self.hotTopicVersion != nil {
                map["hotTopicVersion"] = self.hotTopicVersion!
            }
            if self.hotValue != nil {
                map["hotValue"] = self.hotValue!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.news != nil {
                var tmp : [Any] = []
                for k in self.news! {
                    tmp.append(k.toMap())
                }
                map["news"] = tmp
            }
            if self.summary != nil {
                map["summary"] = self.summary?.toMap()
            }
            if self.textSummary != nil {
                map["textSummary"] = self.textSummary!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("hotTopic") {
                self.hotTopic = dict["hotTopic"] as! String
            }
            if dict.keys.contains("hotTopicVersion") {
                self.hotTopicVersion = dict["hotTopicVersion"] as! String
            }
            if dict.keys.contains("hotValue") {
                self.hotValue = dict["hotValue"] as! Double
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("news") {
                var tmp : [ListHotTopicSummariesResponseBody.Data.News] = []
                for v in dict["news"] as! [Any] {
                    var model = ListHotTopicSummariesResponseBody.Data.News()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.news = tmp
            }
            if dict.keys.contains("summary") {
                var model = ListHotTopicSummariesResponseBody.Data.Summary()
                model.fromMap(dict["summary"] as! [String: Any])
                self.summary = model
            }
            if dict.keys.contains("textSummary") {
                self.textSummary = dict["textSummary"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListHotTopicSummariesResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [ListHotTopicSummariesResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListHotTopicSummariesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListHotTopicSummariesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotTopicSummariesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListHotTopicSummariesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunHotTopicChatRequest : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public class StepForBroadcastContentConfig : Tea.TeaModel {
        public class CustomHotValueWeights : Tea.TeaModel {
            public var dimension: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dimension != nil {
                    map["dimension"] = self.dimension!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dimension") {
                    self.dimension = dict["dimension"] as! String
                }
                if dict.keys.contains("weight") {
                    self.weight = dict["weight"] as! Int32
                }
            }
        }
        public var categories: [String]?

        public var customHotValueWeights: [RunHotTopicChatRequest.StepForBroadcastContentConfig.CustomHotValueWeights]?

        public var topicCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["categories"] = self.categories!
            }
            if self.customHotValueWeights != nil {
                var tmp : [Any] = []
                for k in self.customHotValueWeights! {
                    tmp.append(k.toMap())
                }
                map["customHotValueWeights"] = tmp
            }
            if self.topicCount != nil {
                map["topicCount"] = self.topicCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("categories") {
                self.categories = dict["categories"] as! [String]
            }
            if dict.keys.contains("customHotValueWeights") {
                var tmp : [RunHotTopicChatRequest.StepForBroadcastContentConfig.CustomHotValueWeights] = []
                for v in dict["customHotValueWeights"] as! [Any] {
                    var model = RunHotTopicChatRequest.StepForBroadcastContentConfig.CustomHotValueWeights()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customHotValueWeights = tmp
            }
            if dict.keys.contains("topicCount") {
                self.topicCount = dict["topicCount"] as! Int32
            }
        }
    }
    public var category: String?

    public var generateOptions: [String]?

    public var hotTopicVersion: String?

    public var hotTopics: [String]?

    public var imageCount: Int32?

    public var messages: [RunHotTopicChatRequest.Messages]?

    public var modelCustomPromptTemplate: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var prompt: String?

    public var stepForBroadcastContentConfig: RunHotTopicChatRequest.StepForBroadcastContentConfig?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stepForBroadcastContentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.generateOptions != nil {
            map["generateOptions"] = self.generateOptions!
        }
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.hotTopics != nil {
            map["hotTopics"] = self.hotTopics!
        }
        if self.imageCount != nil {
            map["imageCount"] = self.imageCount!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.stepForBroadcastContentConfig != nil {
            map["stepForBroadcastContentConfig"] = self.stepForBroadcastContentConfig?.toMap()
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("generateOptions") {
            self.generateOptions = dict["generateOptions"] as! [String]
        }
        if dict.keys.contains("hotTopicVersion") {
            self.hotTopicVersion = dict["hotTopicVersion"] as! String
        }
        if dict.keys.contains("hotTopics") {
            self.hotTopics = dict["hotTopics"] as! [String]
        }
        if dict.keys.contains("imageCount") {
            self.imageCount = dict["imageCount"] as! Int32
        }
        if dict.keys.contains("messages") {
            var tmp : [RunHotTopicChatRequest.Messages] = []
            for v in dict["messages"] as! [Any] {
                var model = RunHotTopicChatRequest.Messages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messages = tmp
        }
        if dict.keys.contains("modelCustomPromptTemplate") {
            self.modelCustomPromptTemplate = dict["modelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("originalSessionId") {
            self.originalSessionId = dict["originalSessionId"] as! String
        }
        if dict.keys.contains("prompt") {
            self.prompt = dict["prompt"] as! String
        }
        if dict.keys.contains("stepForBroadcastContentConfig") {
            var model = RunHotTopicChatRequest.StepForBroadcastContentConfig()
            model.fromMap(dict["stepForBroadcastContentConfig"] as! [String: Any])
            self.stepForBroadcastContentConfig = model
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class RunHotTopicChatShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var generateOptionsShrink: String?

    public var hotTopicVersion: String?

    public var hotTopicsShrink: String?

    public var imageCount: Int32?

    public var messagesShrink: String?

    public var modelCustomPromptTemplate: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var prompt: String?

    public var stepForBroadcastContentConfigShrink: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.generateOptionsShrink != nil {
            map["generateOptions"] = self.generateOptionsShrink!
        }
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.hotTopicsShrink != nil {
            map["hotTopics"] = self.hotTopicsShrink!
        }
        if self.imageCount != nil {
            map["imageCount"] = self.imageCount!
        }
        if self.messagesShrink != nil {
            map["messages"] = self.messagesShrink!
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.stepForBroadcastContentConfigShrink != nil {
            map["stepForBroadcastContentConfig"] = self.stepForBroadcastContentConfigShrink!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("generateOptions") {
            self.generateOptionsShrink = dict["generateOptions"] as! String
        }
        if dict.keys.contains("hotTopicVersion") {
            self.hotTopicVersion = dict["hotTopicVersion"] as! String
        }
        if dict.keys.contains("hotTopics") {
            self.hotTopicsShrink = dict["hotTopics"] as! String
        }
        if dict.keys.contains("imageCount") {
            self.imageCount = dict["imageCount"] as! Int32
        }
        if dict.keys.contains("messages") {
            self.messagesShrink = dict["messages"] as! String
        }
        if dict.keys.contains("modelCustomPromptTemplate") {
            self.modelCustomPromptTemplate = dict["modelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("originalSessionId") {
            self.originalSessionId = dict["originalSessionId"] as! String
        }
        if dict.keys.contains("prompt") {
            self.prompt = dict["prompt"] as! String
        }
        if dict.keys.contains("stepForBroadcastContentConfig") {
            self.stepForBroadcastContentConfigShrink = dict["stepForBroadcastContentConfig"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class RunHotTopicChatResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Articles : Tea.TeaModel {
                public var content: String?

                public var pubTime: String?

                public var score: Double?

                public var searchSourceName: String?

                public var select: Bool?

                public var summary: String?

                public var title: String?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.content != nil {
                        map["content"] = self.content!
                    }
                    if self.pubTime != nil {
                        map["pubTime"] = self.pubTime!
                    }
                    if self.score != nil {
                        map["score"] = self.score!
                    }
                    if self.searchSourceName != nil {
                        map["searchSourceName"] = self.searchSourceName!
                    }
                    if self.select != nil {
                        map["select"] = self.select!
                    }
                    if self.summary != nil {
                        map["summary"] = self.summary!
                    }
                    if self.title != nil {
                        map["title"] = self.title!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("content") {
                        self.content = dict["content"] as! String
                    }
                    if dict.keys.contains("pubTime") {
                        self.pubTime = dict["pubTime"] as! String
                    }
                    if dict.keys.contains("score") {
                        self.score = dict["score"] as! Double
                    }
                    if dict.keys.contains("searchSourceName") {
                        self.searchSourceName = dict["searchSourceName"] as! String
                    }
                    if dict.keys.contains("select") {
                        self.select = dict["select"] as! Bool
                    }
                    if dict.keys.contains("summary") {
                        self.summary = dict["summary"] as! String
                    }
                    if dict.keys.contains("title") {
                        self.title = dict["title"] as! String
                    }
                    if dict.keys.contains("url") {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public class HotTopicSummaries : Tea.TeaModel {
                public class Images : Tea.TeaModel {
                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("url") {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public class News : Tea.TeaModel {
                    public var title: String?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.title != nil {
                            map["title"] = self.title!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("title") {
                            self.title = dict["title"] as! String
                        }
                        if dict.keys.contains("url") {
                            self.url = dict["url"] as! String
                        }
                    }
                }
                public var customHotValue: Double?

                public var customTextSummary: String?

                public var hotTopic: String?

                public var hotTopicVersion: String?

                public var hotValue: Double?

                public var images: [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.Images]?

                public var news: [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.News]?

                public var textSummary: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.customHotValue != nil {
                        map["customHotValue"] = self.customHotValue!
                    }
                    if self.customTextSummary != nil {
                        map["customTextSummary"] = self.customTextSummary!
                    }
                    if self.hotTopic != nil {
                        map["hotTopic"] = self.hotTopic!
                    }
                    if self.hotTopicVersion != nil {
                        map["hotTopicVersion"] = self.hotTopicVersion!
                    }
                    if self.hotValue != nil {
                        map["hotValue"] = self.hotValue!
                    }
                    if self.images != nil {
                        var tmp : [Any] = []
                        for k in self.images! {
                            tmp.append(k.toMap())
                        }
                        map["images"] = tmp
                    }
                    if self.news != nil {
                        var tmp : [Any] = []
                        for k in self.news! {
                            tmp.append(k.toMap())
                        }
                        map["news"] = tmp
                    }
                    if self.textSummary != nil {
                        map["textSummary"] = self.textSummary!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("customHotValue") {
                        self.customHotValue = dict["customHotValue"] as! Double
                    }
                    if dict.keys.contains("customTextSummary") {
                        self.customTextSummary = dict["customTextSummary"] as! String
                    }
                    if dict.keys.contains("hotTopic") {
                        self.hotTopic = dict["hotTopic"] as! String
                    }
                    if dict.keys.contains("hotTopicVersion") {
                        self.hotTopicVersion = dict["hotTopicVersion"] as! String
                    }
                    if dict.keys.contains("hotValue") {
                        self.hotValue = dict["hotValue"] as! Double
                    }
                    if dict.keys.contains("images") {
                        var tmp : [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.Images] = []
                        for v in dict["images"] as! [Any] {
                            var model = RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.Images()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.images = tmp
                    }
                    if dict.keys.contains("news") {
                        var tmp : [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.News] = []
                        for v in dict["news"] as! [Any] {
                            var model = RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.News()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.news = tmp
                    }
                    if dict.keys.contains("textSummary") {
                        self.textSummary = dict["textSummary"] as! String
                    }
                }
            }
            public class MultimodalMedias : Tea.TeaModel {
                public var fileUrl: String?

                public var mediaType: String?

                public var sortScore: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fileUrl != nil {
                        map["fileUrl"] = self.fileUrl!
                    }
                    if self.mediaType != nil {
                        map["mediaType"] = self.mediaType!
                    }
                    if self.sortScore != nil {
                        map["sortScore"] = self.sortScore!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("fileUrl") {
                        self.fileUrl = dict["fileUrl"] as! String
                    }
                    if dict.keys.contains("mediaType") {
                        self.mediaType = dict["mediaType"] as! String
                    }
                    if dict.keys.contains("sortScore") {
                        self.sortScore = dict["sortScore"] as! Double
                    }
                }
            }
            public var articles: [RunHotTopicChatResponseBody.Payload.Output.Articles]?

            public var hotTopicSummaries: [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries]?

            public var multimodalMedias: [RunHotTopicChatResponseBody.Payload.Output.MultimodalMedias]?

            public var recommendQueries: [String]?

            public var searchQuery: String?

            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.articles != nil {
                    var tmp : [Any] = []
                    for k in self.articles! {
                        tmp.append(k.toMap())
                    }
                    map["articles"] = tmp
                }
                if self.hotTopicSummaries != nil {
                    var tmp : [Any] = []
                    for k in self.hotTopicSummaries! {
                        tmp.append(k.toMap())
                    }
                    map["hotTopicSummaries"] = tmp
                }
                if self.multimodalMedias != nil {
                    var tmp : [Any] = []
                    for k in self.multimodalMedias! {
                        tmp.append(k.toMap())
                    }
                    map["multimodalMedias"] = tmp
                }
                if self.recommendQueries != nil {
                    map["recommendQueries"] = self.recommendQueries!
                }
                if self.searchQuery != nil {
                    map["searchQuery"] = self.searchQuery!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("articles") {
                    var tmp : [RunHotTopicChatResponseBody.Payload.Output.Articles] = []
                    for v in dict["articles"] as! [Any] {
                        var model = RunHotTopicChatResponseBody.Payload.Output.Articles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.articles = tmp
                }
                if dict.keys.contains("hotTopicSummaries") {
                    var tmp : [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries] = []
                    for v in dict["hotTopicSummaries"] as! [Any] {
                        var model = RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.hotTopicSummaries = tmp
                }
                if dict.keys.contains("multimodalMedias") {
                    var tmp : [RunHotTopicChatResponseBody.Payload.Output.MultimodalMedias] = []
                    for v in dict["multimodalMedias"] as! [Any] {
                        var model = RunHotTopicChatResponseBody.Payload.Output.MultimodalMedias()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.multimodalMedias = tmp
                }
                if dict.keys.contains("recommendQueries") {
                    self.recommendQueries = dict["recommendQueries"] as! [String]
                }
                if dict.keys.contains("searchQuery") {
                    self.searchQuery = dict["searchQuery"] as! String
                }
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunHotTopicChatResponseBody.Payload.Output?

        public var usage: RunHotTopicChatResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunHotTopicChatResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunHotTopicChatResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunHotTopicChatResponseBody.Header?

    public var payload: RunHotTopicChatResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("header") {
            var model = RunHotTopicChatResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunHotTopicChatResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class RunHotTopicChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunHotTopicChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunHotTopicChatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunHotTopicSummaryRequest : Tea.TeaModel {
    public class StepForCustomSummaryStyleConfig : Tea.TeaModel {
        public var summaryImageCount: Int32?

        public var summaryModel: String?

        public var summaryPrompt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.summaryImageCount != nil {
                map["summaryImageCount"] = self.summaryImageCount!
            }
            if self.summaryModel != nil {
                map["summaryModel"] = self.summaryModel!
            }
            if self.summaryPrompt != nil {
                map["summaryPrompt"] = self.summaryPrompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("summaryImageCount") {
                self.summaryImageCount = dict["summaryImageCount"] as! Int32
            }
            if dict.keys.contains("summaryModel") {
                self.summaryModel = dict["summaryModel"] as! String
            }
            if dict.keys.contains("summaryPrompt") {
                self.summaryPrompt = dict["summaryPrompt"] as! String
            }
        }
    }
    public var hotTopicVersion: String?

    public var stepForCustomSummaryStyleConfig: RunHotTopicSummaryRequest.StepForCustomSummaryStyleConfig?

    public var topicIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stepForCustomSummaryStyleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.stepForCustomSummaryStyleConfig != nil {
            map["stepForCustomSummaryStyleConfig"] = self.stepForCustomSummaryStyleConfig?.toMap()
        }
        if self.topicIds != nil {
            map["topicIds"] = self.topicIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("hotTopicVersion") {
            self.hotTopicVersion = dict["hotTopicVersion"] as! String
        }
        if dict.keys.contains("stepForCustomSummaryStyleConfig") {
            var model = RunHotTopicSummaryRequest.StepForCustomSummaryStyleConfig()
            model.fromMap(dict["stepForCustomSummaryStyleConfig"] as! [String: Any])
            self.stepForCustomSummaryStyleConfig = model
        }
        if dict.keys.contains("topicIds") {
            self.topicIds = dict["topicIds"] as! [String]
        }
    }
}

public class RunHotTopicSummaryShrinkRequest : Tea.TeaModel {
    public var hotTopicVersion: String?

    public var stepForCustomSummaryStyleConfigShrink: String?

    public var topicIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.stepForCustomSummaryStyleConfigShrink != nil {
            map["stepForCustomSummaryStyleConfig"] = self.stepForCustomSummaryStyleConfigShrink!
        }
        if self.topicIdsShrink != nil {
            map["topicIds"] = self.topicIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("hotTopicVersion") {
            self.hotTopicVersion = dict["hotTopicVersion"] as! String
        }
        if dict.keys.contains("stepForCustomSummaryStyleConfig") {
            self.stepForCustomSummaryStyleConfigShrink = dict["stepForCustomSummaryStyleConfig"] as! String
        }
        if dict.keys.contains("topicIds") {
            self.topicIdsShrink = dict["topicIds"] as! String
        }
    }
}

public class RunHotTopicSummaryResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public var topicId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["text"] = self.text!
                }
                if self.topicId != nil {
                    map["topicId"] = self.topicId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
                if dict.keys.contains("topicId") {
                    self.topicId = dict["topicId"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunHotTopicSummaryResponseBody.Payload.Output?

        public var usage: RunHotTopicSummaryResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunHotTopicSummaryResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunHotTopicSummaryResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunHotTopicSummaryResponseBody.Header?

    public var payload: RunHotTopicSummaryResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("header") {
            var model = RunHotTopicSummaryResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunHotTopicSummaryResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class RunHotTopicSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunHotTopicSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunHotTopicSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunMarketingInformationExtractRequest : Tea.TeaModel {
    public var customPrompt: String?

    public var extractType: String?

    public var modelId: String?

    public var sourceMaterials: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.extractType != nil {
            map["extractType"] = self.extractType!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.sourceMaterials != nil {
            map["sourceMaterials"] = self.sourceMaterials!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customPrompt") {
            self.customPrompt = dict["customPrompt"] as! String
        }
        if dict.keys.contains("extractType") {
            self.extractType = dict["extractType"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("sourceMaterials") {
            self.sourceMaterials = dict["sourceMaterials"] as! [String]
        }
    }
}

public class RunMarketingInformationExtractShrinkRequest : Tea.TeaModel {
    public var customPrompt: String?

    public var extractType: String?

    public var modelId: String?

    public var sourceMaterialsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.extractType != nil {
            map["extractType"] = self.extractType!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.sourceMaterialsShrink != nil {
            map["sourceMaterials"] = self.sourceMaterialsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customPrompt") {
            self.customPrompt = dict["customPrompt"] as! String
        }
        if dict.keys.contains("extractType") {
            self.extractType = dict["extractType"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("sourceMaterials") {
            self.sourceMaterialsShrink = dict["sourceMaterials"] as! String
        }
    }
}

public class RunMarketingInformationExtractResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunMarketingInformationExtractResponseBody.Payload.Output?

        public var usage: RunMarketingInformationExtractResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunMarketingInformationExtractResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunMarketingInformationExtractResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunMarketingInformationExtractResponseBody.Header?

    public var payload: RunMarketingInformationExtractResponseBody.Payload?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunMarketingInformationExtractResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunMarketingInformationExtractResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
    }
}

public class RunMarketingInformationExtractResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunMarketingInformationExtractResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunMarketingInformationExtractResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunMarketingInformationWritingRequest : Tea.TeaModel {
    public var customLimitation: String?

    public var customPrompt: String?

    public var inputExample: String?

    public var modelId: String?

    public var outputExample: String?

    public var sourceMaterial: String?

    public var writingType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customLimitation != nil {
            map["customLimitation"] = self.customLimitation!
        }
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.inputExample != nil {
            map["inputExample"] = self.inputExample!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputExample != nil {
            map["outputExample"] = self.outputExample!
        }
        if self.sourceMaterial != nil {
            map["sourceMaterial"] = self.sourceMaterial!
        }
        if self.writingType != nil {
            map["writingType"] = self.writingType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customLimitation") {
            self.customLimitation = dict["customLimitation"] as! String
        }
        if dict.keys.contains("customPrompt") {
            self.customPrompt = dict["customPrompt"] as! String
        }
        if dict.keys.contains("inputExample") {
            self.inputExample = dict["inputExample"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("outputExample") {
            self.outputExample = dict["outputExample"] as! String
        }
        if dict.keys.contains("sourceMaterial") {
            self.sourceMaterial = dict["sourceMaterial"] as! String
        }
        if dict.keys.contains("writingType") {
            self.writingType = dict["writingType"] as! String
        }
    }
}

public class RunMarketingInformationWritingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunMarketingInformationWritingResponseBody.Payload.Output?

        public var usage: RunMarketingInformationWritingResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunMarketingInformationWritingResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunMarketingInformationWritingResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunMarketingInformationWritingResponseBody.Header?

    public var payload: RunMarketingInformationWritingResponseBody.Payload?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunMarketingInformationWritingResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunMarketingInformationWritingResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
    }
}

public class RunMarketingInformationWritingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunMarketingInformationWritingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunMarketingInformationWritingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunScriptContinueRequest : Tea.TeaModel {
    public var scriptSummary: String?

    public var scriptTypeKeyword: String?

    public var userProvidedContent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scriptSummary != nil {
            map["scriptSummary"] = self.scriptSummary!
        }
        if self.scriptTypeKeyword != nil {
            map["scriptTypeKeyword"] = self.scriptTypeKeyword!
        }
        if self.userProvidedContent != nil {
            map["userProvidedContent"] = self.userProvidedContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("scriptSummary") {
            self.scriptSummary = dict["scriptSummary"] as! String
        }
        if dict.keys.contains("scriptTypeKeyword") {
            self.scriptTypeKeyword = dict["scriptTypeKeyword"] as! String
        }
        if dict.keys.contains("userProvidedContent") {
            self.userProvidedContent = dict["userProvidedContent"] as! String
        }
    }
}

public class RunScriptContinueResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunScriptContinueResponseBody.Payload.Output?

        public var usage: RunScriptContinueResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunScriptContinueResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunScriptContinueResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunScriptContinueResponseBody.Header?

    public var payload: RunScriptContinueResponseBody.Payload?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunScriptContinueResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunScriptContinueResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
    }
}

public class RunScriptContinueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunScriptContinueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunScriptContinueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunScriptPlanningRequest : Tea.TeaModel {
    public var additionalNote: String?

    public var dialogueInScene: Bool?

    public var plotConflict: Bool?

    public var scriptName: String?

    public var scriptShotCount: Int32?

    public var scriptSummary: String?

    public var scriptTypeKeyword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalNote != nil {
            map["additionalNote"] = self.additionalNote!
        }
        if self.dialogueInScene != nil {
            map["dialogueInScene"] = self.dialogueInScene!
        }
        if self.plotConflict != nil {
            map["plotConflict"] = self.plotConflict!
        }
        if self.scriptName != nil {
            map["scriptName"] = self.scriptName!
        }
        if self.scriptShotCount != nil {
            map["scriptShotCount"] = self.scriptShotCount!
        }
        if self.scriptSummary != nil {
            map["scriptSummary"] = self.scriptSummary!
        }
        if self.scriptTypeKeyword != nil {
            map["scriptTypeKeyword"] = self.scriptTypeKeyword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalNote") {
            self.additionalNote = dict["additionalNote"] as! String
        }
        if dict.keys.contains("dialogueInScene") {
            self.dialogueInScene = dict["dialogueInScene"] as! Bool
        }
        if dict.keys.contains("plotConflict") {
            self.plotConflict = dict["plotConflict"] as! Bool
        }
        if dict.keys.contains("scriptName") {
            self.scriptName = dict["scriptName"] as! String
        }
        if dict.keys.contains("scriptShotCount") {
            self.scriptShotCount = dict["scriptShotCount"] as! Int32
        }
        if dict.keys.contains("scriptSummary") {
            self.scriptSummary = dict["scriptSummary"] as! String
        }
        if dict.keys.contains("scriptTypeKeyword") {
            self.scriptTypeKeyword = dict["scriptTypeKeyword"] as! String
        }
    }
}

public class RunScriptPlanningResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunScriptPlanningResponseBody.Payload.Output?

        public var usage: RunScriptPlanningResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunScriptPlanningResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunScriptPlanningResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunScriptPlanningResponseBody.Header?

    public var payload: RunScriptPlanningResponseBody.Payload?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunScriptPlanningResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunScriptPlanningResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
    }
}

public class RunScriptPlanningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunScriptPlanningResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunScriptPlanningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunStyleWritingRequest : Tea.TeaModel {
    public var learningSamples: [String]?

    public var referenceMaterials: [String]?

    public var styleFeature: String?

    public var writingTheme: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.learningSamples != nil {
            map["learningSamples"] = self.learningSamples!
        }
        if self.referenceMaterials != nil {
            map["referenceMaterials"] = self.referenceMaterials!
        }
        if self.styleFeature != nil {
            map["styleFeature"] = self.styleFeature!
        }
        if self.writingTheme != nil {
            map["writingTheme"] = self.writingTheme!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("learningSamples") {
            self.learningSamples = dict["learningSamples"] as! [String]
        }
        if dict.keys.contains("referenceMaterials") {
            self.referenceMaterials = dict["referenceMaterials"] as! [String]
        }
        if dict.keys.contains("styleFeature") {
            self.styleFeature = dict["styleFeature"] as! String
        }
        if dict.keys.contains("writingTheme") {
            self.writingTheme = dict["writingTheme"] as! String
        }
    }
}

public class RunStyleWritingShrinkRequest : Tea.TeaModel {
    public var learningSamplesShrink: String?

    public var referenceMaterialsShrink: String?

    public var styleFeature: String?

    public var writingTheme: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.learningSamplesShrink != nil {
            map["learningSamples"] = self.learningSamplesShrink!
        }
        if self.referenceMaterialsShrink != nil {
            map["referenceMaterials"] = self.referenceMaterialsShrink!
        }
        if self.styleFeature != nil {
            map["styleFeature"] = self.styleFeature!
        }
        if self.writingTheme != nil {
            map["writingTheme"] = self.writingTheme!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("learningSamples") {
            self.learningSamplesShrink = dict["learningSamples"] as! String
        }
        if dict.keys.contains("referenceMaterials") {
            self.referenceMaterialsShrink = dict["referenceMaterials"] as! String
        }
        if dict.keys.contains("styleFeature") {
            self.styleFeature = dict["styleFeature"] as! String
        }
        if dict.keys.contains("writingTheme") {
            self.writingTheme = dict["writingTheme"] as! String
        }
    }
}

public class RunStyleWritingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunStyleWritingResponseBody.Payload.Output?

        public var usage: RunStyleWritingResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunStyleWritingResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunStyleWritingResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunStyleWritingResponseBody.Header?

    public var payload: RunStyleWritingResponseBody.Payload?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunStyleWritingResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunStyleWritingResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
    }
}

public class RunStyleWritingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunStyleWritingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunStyleWritingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunTagMiningAnalysisRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tagDefinePrompt") {
                self.tagDefinePrompt = dict["tagDefinePrompt"] as! String
            }
            if dict.keys.contains("tagName") {
                self.tagName = dict["tagName"] as! String
            }
        }
    }
    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var modelId: String?

    public var outputFormat: String?

    public var tags: [RunTagMiningAnalysisRequest.Tags]?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("businessType") {
            self.businessType = dict["businessType"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("extraInfo") {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("outputFormat") {
            self.outputFormat = dict["outputFormat"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [RunTagMiningAnalysisRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = RunTagMiningAnalysisRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("taskDescription") {
            self.taskDescription = dict["taskDescription"] as! String
        }
    }
}

public class RunTagMiningAnalysisShrinkRequest : Tea.TeaModel {
    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var modelId: String?

    public var outputFormat: String?

    public var tagsShrink: String?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("businessType") {
            self.businessType = dict["businessType"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("extraInfo") {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("outputFormat") {
            self.outputFormat = dict["outputFormat"] as! String
        }
        if dict.keys.contains("tags") {
            self.tagsShrink = dict["tags"] as! String
        }
        if dict.keys.contains("taskDescription") {
            self.taskDescription = dict["taskDescription"] as! String
        }
    }
}

public class RunTagMiningAnalysisResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunTagMiningAnalysisResponseBody.Payload.Output?

        public var usage: RunTagMiningAnalysisResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunTagMiningAnalysisResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunTagMiningAnalysisResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunTagMiningAnalysisResponseBody.Header?

    public var payload: RunTagMiningAnalysisResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("header") {
            var model = RunTagMiningAnalysisResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunTagMiningAnalysisResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class RunTagMiningAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunTagMiningAnalysisResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunTagMiningAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunVideoAnalysisRequest : Tea.TeaModel {
    public var generateOptions: [String]?

    public var modelCustomPromptTemplate: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var snapshotInterval: Double?

    public var taskId: String?

    public var videoExtraInfo: String?

    public var videoModelCustomPromptTemplate: String?

    public var videoModelId: String?

    public var videoUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.generateOptions != nil {
            map["generateOptions"] = self.generateOptions!
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.snapshotInterval != nil {
            map["snapshotInterval"] = self.snapshotInterval!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.videoExtraInfo != nil {
            map["videoExtraInfo"] = self.videoExtraInfo!
        }
        if self.videoModelCustomPromptTemplate != nil {
            map["videoModelCustomPromptTemplate"] = self.videoModelCustomPromptTemplate!
        }
        if self.videoModelId != nil {
            map["videoModelId"] = self.videoModelId!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("generateOptions") {
            self.generateOptions = dict["generateOptions"] as! [String]
        }
        if dict.keys.contains("modelCustomPromptTemplate") {
            self.modelCustomPromptTemplate = dict["modelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("modelCustomPromptTemplateId") {
            self.modelCustomPromptTemplateId = dict["modelCustomPromptTemplateId"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("originalSessionId") {
            self.originalSessionId = dict["originalSessionId"] as! String
        }
        if dict.keys.contains("snapshotInterval") {
            self.snapshotInterval = dict["snapshotInterval"] as! Double
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
        if dict.keys.contains("videoExtraInfo") {
            self.videoExtraInfo = dict["videoExtraInfo"] as! String
        }
        if dict.keys.contains("videoModelCustomPromptTemplate") {
            self.videoModelCustomPromptTemplate = dict["videoModelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("videoModelId") {
            self.videoModelId = dict["videoModelId"] as! String
        }
        if dict.keys.contains("videoUrl") {
            self.videoUrl = dict["videoUrl"] as! String
        }
    }
}

public class RunVideoAnalysisShrinkRequest : Tea.TeaModel {
    public var generateOptionsShrink: String?

    public var modelCustomPromptTemplate: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var snapshotInterval: Double?

    public var taskId: String?

    public var videoExtraInfo: String?

    public var videoModelCustomPromptTemplate: String?

    public var videoModelId: String?

    public var videoUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.generateOptionsShrink != nil {
            map["generateOptions"] = self.generateOptionsShrink!
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.snapshotInterval != nil {
            map["snapshotInterval"] = self.snapshotInterval!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.videoExtraInfo != nil {
            map["videoExtraInfo"] = self.videoExtraInfo!
        }
        if self.videoModelCustomPromptTemplate != nil {
            map["videoModelCustomPromptTemplate"] = self.videoModelCustomPromptTemplate!
        }
        if self.videoModelId != nil {
            map["videoModelId"] = self.videoModelId!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("generateOptions") {
            self.generateOptionsShrink = dict["generateOptions"] as! String
        }
        if dict.keys.contains("modelCustomPromptTemplate") {
            self.modelCustomPromptTemplate = dict["modelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("modelCustomPromptTemplateId") {
            self.modelCustomPromptTemplateId = dict["modelCustomPromptTemplateId"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("originalSessionId") {
            self.originalSessionId = dict["originalSessionId"] as! String
        }
        if dict.keys.contains("snapshotInterval") {
            self.snapshotInterval = dict["snapshotInterval"] as! Double
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
        if dict.keys.contains("videoExtraInfo") {
            self.videoExtraInfo = dict["videoExtraInfo"] as! String
        }
        if dict.keys.contains("videoModelCustomPromptTemplate") {
            self.videoModelCustomPromptTemplate = dict["videoModelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("videoModelId") {
            self.videoModelId = dict["videoModelId"] as! String
        }
        if dict.keys.contains("videoUrl") {
            self.videoUrl = dict["videoUrl"] as! String
        }
    }
}

public class RunVideoAnalysisResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class VideoAnalysisResult : Tea.TeaModel {
                public class Usage : Tea.TeaModel {
                    public var inputTokens: Int64?

                    public var outputTokens: Int64?

                    public var totalTokens: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.inputTokens != nil {
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("inputTokens") {
                            self.inputTokens = dict["inputTokens"] as! Int64
                        }
                        if dict.keys.contains("outputTokens") {
                            self.outputTokens = dict["outputTokens"] as! Int64
                        }
                        if dict.keys.contains("totalTokens") {
                            self.totalTokens = dict["totalTokens"] as! Int64
                        }
                    }
                }
                public class VideoShotAnalysisResults : Tea.TeaModel {
                    public var endTime: Int64?

                    public var startTime: Int64?

                    public var text: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.endTime != nil {
                            map["endTime"] = self.endTime!
                        }
                        if self.startTime != nil {
                            map["startTime"] = self.startTime!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("endTime") {
                            self.endTime = dict["endTime"] as! Int64
                        }
                        if dict.keys.contains("startTime") {
                            self.startTime = dict["startTime"] as! Int64
                        }
                        if dict.keys.contains("text") {
                            self.text = dict["text"] as! String
                        }
                    }
                }
                public var generateFinished: Bool?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.Usage?

                public var videoShotAnalysisResults: [RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    if self.videoShotAnalysisResults != nil {
                        var tmp : [Any] = []
                        for k in self.videoShotAnalysisResults! {
                            tmp.append(k.toMap())
                        }
                        map["videoShotAnalysisResults"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                    if dict.keys.contains("usage") {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.Usage()
                        model.fromMap(dict["usage"] as! [String: Any])
                        self.usage = model
                    }
                    if dict.keys.contains("videoShotAnalysisResults") {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults] = []
                        for v in dict["videoShotAnalysisResults"] as! [Any] {
                            var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.videoShotAnalysisResults = tmp
                    }
                }
            }
            public class VideoCaptionResult : Tea.TeaModel {
                public class VideoCaptions : Tea.TeaModel {
                    public var endTime: Int64?

                    public var endTimeFormat: String?

                    public var startTime: Int64?

                    public var startTimeFormat: String?

                    public var text: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.endTime != nil {
                            map["endTime"] = self.endTime!
                        }
                        if self.endTimeFormat != nil {
                            map["endTimeFormat"] = self.endTimeFormat!
                        }
                        if self.startTime != nil {
                            map["startTime"] = self.startTime!
                        }
                        if self.startTimeFormat != nil {
                            map["startTimeFormat"] = self.startTimeFormat!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("endTime") {
                            self.endTime = dict["endTime"] as! Int64
                        }
                        if dict.keys.contains("endTimeFormat") {
                            self.endTimeFormat = dict["endTimeFormat"] as! String
                        }
                        if dict.keys.contains("startTime") {
                            self.startTime = dict["startTime"] as! Int64
                        }
                        if dict.keys.contains("startTimeFormat") {
                            self.startTimeFormat = dict["startTimeFormat"] as! String
                        }
                        if dict.keys.contains("text") {
                            self.text = dict["text"] as! String
                        }
                    }
                }
                public var generateFinished: Bool?

                public var videoCaptions: [RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult.VideoCaptions]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.videoCaptions != nil {
                        var tmp : [Any] = []
                        for k in self.videoCaptions! {
                            tmp.append(k.toMap())
                        }
                        map["videoCaptions"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("videoCaptions") {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult.VideoCaptions] = []
                        for v in dict["videoCaptions"] as! [Any] {
                            var model = RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult.VideoCaptions()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.videoCaptions = tmp
                    }
                }
            }
            public class VideoGenerateResult : Tea.TeaModel {
                public class Usage : Tea.TeaModel {
                    public var inputTokens: Int64?

                    public var outputTokens: Int64?

                    public var totalTokens: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.inputTokens != nil {
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("inputTokens") {
                            self.inputTokens = dict["inputTokens"] as! Int64
                        }
                        if dict.keys.contains("outputTokens") {
                            self.outputTokens = dict["outputTokens"] as! Int64
                        }
                        if dict.keys.contains("totalTokens") {
                            self.totalTokens = dict["totalTokens"] as! Int64
                        }
                    }
                }
                public var generateFinished: Bool?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult.Usage?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                    if dict.keys.contains("usage") {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult.Usage()
                        model.fromMap(dict["usage"] as! [String: Any])
                        self.usage = model
                    }
                }
            }
            public class VideoMindMappingGenerateResult : Tea.TeaModel {
                public class Usage : Tea.TeaModel {
                    public var inputTokens: Int64?

                    public var outputTokens: Int64?

                    public var totalTokens: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.inputTokens != nil {
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("inputTokens") {
                            self.inputTokens = dict["inputTokens"] as! Int64
                        }
                        if dict.keys.contains("outputTokens") {
                            self.outputTokens = dict["outputTokens"] as! Int64
                        }
                        if dict.keys.contains("totalTokens") {
                            self.totalTokens = dict["totalTokens"] as! Int64
                        }
                    }
                }
                public class VideoMindMappings : Tea.TeaModel {
                    public class ChildNodes : Tea.TeaModel {
                        public class ChildNodes : Tea.TeaModel {
                            public var name: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.name != nil {
                                    map["name"] = self.name!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("name") {
                                    self.name = dict["name"] as! String
                                }
                            }
                        }
                        public var childNodes: [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes]?

                        public var name: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.childNodes != nil {
                                var tmp : [Any] = []
                                for k in self.childNodes! {
                                    tmp.append(k.toMap())
                                }
                                map["childNodes"] = tmp
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("childNodes") {
                                var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes] = []
                                for v in dict["childNodes"] as! [Any] {
                                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.childNodes = tmp
                            }
                            if dict.keys.contains("name") {
                                self.name = dict["name"] as! String
                            }
                        }
                    }
                    public var childNodes: [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes]?

                    public var name: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.childNodes != nil {
                            var tmp : [Any] = []
                            for k in self.childNodes! {
                                tmp.append(k.toMap())
                            }
                            map["childNodes"] = tmp
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("childNodes") {
                            var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes] = []
                            for v in dict["childNodes"] as! [Any] {
                                var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.childNodes = tmp
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public var generateFinished: Bool?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.Usage?

                public var videoMindMappings: [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    if self.videoMindMappings != nil {
                        var tmp : [Any] = []
                        for k in self.videoMindMappings! {
                            tmp.append(k.toMap())
                        }
                        map["videoMindMappings"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                    if dict.keys.contains("usage") {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.Usage()
                        model.fromMap(dict["usage"] as! [String: Any])
                        self.usage = model
                    }
                    if dict.keys.contains("videoMindMappings") {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings] = []
                        for v in dict["videoMindMappings"] as! [Any] {
                            var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.videoMindMappings = tmp
                    }
                }
            }
            public class VideoTitleGenerateResult : Tea.TeaModel {
                public class Usage : Tea.TeaModel {
                    public var inputTokens: Int64?

                    public var outputTokens: Int64?

                    public var totalTokens: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.inputTokens != nil {
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("inputTokens") {
                            self.inputTokens = dict["inputTokens"] as! Int64
                        }
                        if dict.keys.contains("outputTokens") {
                            self.outputTokens = dict["outputTokens"] as! Int64
                        }
                        if dict.keys.contains("totalTokens") {
                            self.totalTokens = dict["totalTokens"] as! Int64
                        }
                    }
                }
                public var generateFinished: Bool?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult.Usage?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                    if dict.keys.contains("usage") {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult.Usage()
                        model.fromMap(dict["usage"] as! [String: Any])
                        self.usage = model
                    }
                }
            }
            public var videoAnalysisResult: RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult?

            public var videoCaptionResult: RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult?

            public var videoGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult?

            public var videoMindMappingGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult?

            public var videoTitleGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.videoAnalysisResult?.validate()
                try self.videoCaptionResult?.validate()
                try self.videoGenerateResult?.validate()
                try self.videoMindMappingGenerateResult?.validate()
                try self.videoTitleGenerateResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.videoAnalysisResult != nil {
                    map["videoAnalysisResult"] = self.videoAnalysisResult?.toMap()
                }
                if self.videoCaptionResult != nil {
                    map["videoCaptionResult"] = self.videoCaptionResult?.toMap()
                }
                if self.videoGenerateResult != nil {
                    map["videoGenerateResult"] = self.videoGenerateResult?.toMap()
                }
                if self.videoMindMappingGenerateResult != nil {
                    map["videoMindMappingGenerateResult"] = self.videoMindMappingGenerateResult?.toMap()
                }
                if self.videoTitleGenerateResult != nil {
                    map["videoTitleGenerateResult"] = self.videoTitleGenerateResult?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("videoAnalysisResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult()
                    model.fromMap(dict["videoAnalysisResult"] as! [String: Any])
                    self.videoAnalysisResult = model
                }
                if dict.keys.contains("videoCaptionResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult()
                    model.fromMap(dict["videoCaptionResult"] as! [String: Any])
                    self.videoCaptionResult = model
                }
                if dict.keys.contains("videoGenerateResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult()
                    model.fromMap(dict["videoGenerateResult"] as! [String: Any])
                    self.videoGenerateResult = model
                }
                if dict.keys.contains("videoMindMappingGenerateResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult()
                    model.fromMap(dict["videoMindMappingGenerateResult"] as! [String: Any])
                    self.videoMindMappingGenerateResult = model
                }
                if dict.keys.contains("videoTitleGenerateResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult()
                    model.fromMap(dict["videoTitleGenerateResult"] as! [String: Any])
                    self.videoTitleGenerateResult = model
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
                }
            }
        }
        public var output: RunVideoAnalysisResponseBody.Payload.Output?

        public var usage: RunVideoAnalysisResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunVideoAnalysisResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunVideoAnalysisResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunVideoAnalysisResponseBody.Header?

    public var payload: RunVideoAnalysisResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("header") {
            var model = RunVideoAnalysisResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunVideoAnalysisResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class RunVideoAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunVideoAnalysisResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunVideoAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
