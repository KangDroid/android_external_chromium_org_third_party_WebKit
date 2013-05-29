/*
 * Copyright (C) 2009 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 * copyright notice, this list of conditions and the following disclaimer
 * in the documentation and/or other materials provided with the
 * distribution.
 *     * Neither the name of Google Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef WebNodeCollection_h
#define WebNodeCollection_h

#include "../../../../public/platform/WebCommon.h"

namespace WebCore { class HTMLCollection; }
#if WEBKIT_IMPLEMENTATION
namespace WTF { template <typename T> class PassRefPtr; }
#endif

namespace WebKit {
class WebNode;

// Provides readonly access to some properties of a DOM node.
class WebNodeCollection {
public:
    ~WebNodeCollection() { reset(); }

    WebNodeCollection() : m_private(0), m_current(0) { }
    WebNodeCollection(const WebNodeCollection& n) : m_private(0) { assign(n); }
    WebNodeCollection& operator=(const WebNodeCollection& n)
    {
        assign(n);
        return *this;
    }

    bool isNull() const { return !m_private; }

    WEBKIT_EXPORT void reset();
    WEBKIT_EXPORT void assign(const WebNodeCollection&);

    WEBKIT_EXPORT unsigned length() const;
    WEBKIT_EXPORT WebNode nextItem() const;
    WEBKIT_EXPORT WebNode firstItem() const;

#if WEBKIT_IMPLEMENTATION
    WebNodeCollection(const WTF::PassRefPtr<WebCore::HTMLCollection>&);
#endif

private:
    void assign(WebCore::HTMLCollection*);
    WebCore::HTMLCollection* m_private;
    mutable unsigned m_current;
};

} // namespace WebKit

#endif
