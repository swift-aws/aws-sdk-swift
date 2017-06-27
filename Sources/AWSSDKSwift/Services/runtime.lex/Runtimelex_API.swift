// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import AWSSDKSwiftCore

/**
Amazon Lex provides both build and runtime endpoints. Each endpoint provides a set of operations (API). Your application uses the runtime API to understand user utterances (user input text or voice). For example, suppose user says "I want pizza", your application sends this input to Amazon Lex using the runtime API. Amazon Lex recognizes that the user request is for the OrderPizza intent (one of the intents defined in the application). Then Amazon Lex engages in user conversation on behalf of the application to elicit required information (slot values, such as pizza size and crust type), and then performs fulfillment activity (that you configured when you created the application). You use the build-time API to create and manage your Amazon Lex applications. For a list of build-time operations, see the build-time API. . 
*/
public struct Runtimelex {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "runtime.lex",
            serviceProtocol: .restjson,
            apiVersion: "2016-11-28",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [RuntimelexError.self]
        )
    }

    ///  Sends user input text to Amazon Lex at runtime. Amazon Lex uses the machine learning model that the service built for the application to interpret user input.   In response, Amazon Lex returns the next message to convey to the user (based on the context of the user interaction) and whether to expect a user response to the message (dialogState). For example, consider the following response messages:    "What pizza toppings would you like?" – In this case, the dialogState would be ElicitSlot (that is, a user response is expected).    "Your order has been placed." – In this case, Amazon Lex returns one of the following dialogState values depending on how the intent fulfillment is configured (see fulfillmentActivity in CreateIntent):     FulFilled – The intent fulfillment is configured through a Lambda function.     ReadyForFulfilment – The intent's fulfillmentActivity is to simply return the intent data back to the client application.     
    public func postText(_ input: PostTextRequest) throws -> PostTextResponse {
        return try client.send(operation: "PostText", path: "/bot/{botName}/alias/{botAlias}/user/{userId}/text", httpMethod: "POST", input: input)
    }


}