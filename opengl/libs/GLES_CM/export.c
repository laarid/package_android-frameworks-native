#include <EGL/egl.h>
#include <GLES/gl.h>
#include <GLES/glext.h>

#if !defined(__ANDROID__)

void GL_APIENTRY
glEGLImageTargetTexture2DOES(GLenum target, GLeglImageOES image)
{
    static PFNGLEGLIMAGETARGETTEXTURE2DOESPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNGLEGLIMAGETARGETTEXTURE2DOESPROC) eglGetProcAddress("glEGLImageTargetTexture2DOES");

    if (pfn)
        pfn(target, image);
}

void GL_APIENTRY
glBindFramebufferOES (GLenum target, GLuint framebuffer)
{
    static PFNGLBINDRENDERBUFFEROESPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNGLBINDRENDERBUFFEROESPROC) eglGetProcAddress("glBindFramebufferOES");

    // MESA has glBindFramebufferOES but not exported.
    pfn(target, framebuffer);
}

GLenum GL_APIENTRY
glCheckFramebufferStatusOES (GLenum target)
{
    static PFNGLCHECKFRAMEBUFFERSTATUSOESPROC pfn = NULL;

    if (!pfn)
        (PFNGLCHECKFRAMEBUFFERSTATUSOESPROC) eglGetProcAddress("glCheckFramebufferStatusOES");

    // MESA has glCheckFramebufferStatusOES but not exported.
    return pfn(target);
}

void GL_APIENTRY
glDeleteFramebuffersOES (GLsizei n, const GLuint* framebuffers)
{
    static PFNGLDELETERENDERBUFFERSOESPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNGLDELETERENDERBUFFERSOESPROC) eglGetProcAddress("glDeleteFramebuffersOES");

    // MESA has glDeleteFramebuffersOES but not exported.
    pfn(n, framebuffers);
}

void GL_APIENTRY
glFramebufferTexture2DOES (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
{
    static PFNGLFRAMEBUFFERTEXTURE2DOESPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNGLFRAMEBUFFERTEXTURE2DOESPROC) eglGetProcAddress("glFramebufferTexture2DOES");

    // MESA has glFramebufferTexture2DOES but not exported.
    pfn(target, attachment, textarget, texture, level);
}

void GL_APIENTRY
glGenFramebuffersOES (GLsizei n, GLuint* framebuffers)
{
    static PFNGLGENFRAMEBUFFERSOESPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNGLGENFRAMEBUFFERSOESPROC) eglGetProcAddress("glGenFramebuffersOES");

    // MESA has glGenFramebuffersOES but not exported.
    pfn(n, framebuffers);
}

void GL_APIENTRY
glDrawTexiOES (GLint x, GLint y, GLint z, GLint width, GLint height)
{
    static PFNGLDRAWTEXIOESPROC pfn = NULL;

    if (!pfn)
        pfn = (PFNGLDRAWTEXIOESPROC) eglGetProcAddress("glDrawTexiOES");

    // MESA has glDrawTexiOES but not exported.
    pfn(x, y, z, width, height);
}

#endif // !__ANDROID__
