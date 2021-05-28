<?php echo'<?xml version="1.0" encoding="UTF-8"?>';?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
        <loc>{{url('')}}</loc>
        <lastmod>{{gmdate('Y-m-d\TH:i:s\Z',strtotime($main_page->updated_at))}}</lastmod>
        <changefreq>daily</changefreq>
        <priority>1</priority>
    </url>
    <url>
        <loc>{{url('ua/')}}</loc>
        <lastmod>{{gmdate('Y-m-d\TH:i:s\Z',strtotime($main_page->updated_at))}}</lastmod>
        <changefreq>daily</changefreq>
        <priority>1</priority>
    </url>
    <url>
        <loc>{{url('price')}}</loc>
        <lastmod>2021-03-10T12:12:37Z</lastmod>
        <changefreq>daily</changefreq>
        <priority>0.6</priority>
    </url>
    <url>
        <loc>{{url('ua/price')}}</loc>
        <lastmod>2021-03-10T12:12:37Z</lastmod>
        <changefreq>daily</changefreq>
        <priority>0.6</priority>
    </url>
    <url>
        <loc>{{url('contacts')}}</loc>
        <lastmod>2021-03-10T12:12:37Z</lastmod>
        <changefreq>daily</changefreq>
        <priority>0.6</priority>
    </url>
    <url>
        <loc>{{url('ua/contacts')}}</loc>
        <lastmod>2021-03-10T12:12:37Z</lastmod>
        <changefreq>daily</changefreq>
        <priority>0.6</priority>
    </url>
    @foreach ($posts as $post)
        <url>
            <loc>{{url('projects/'.$post->url)}}</loc>
            <lastmod>{{gmdate('Y-m-d\TH:i:s\Z',strtotime($post->updated_at))}}</lastmod>
            <changefreq>daily</changefreq>
            <priority>0.6</priority>
        </url>
    @endforeach
    @foreach ($posts as $post)
        <url>
            <loc>{{url('ua/projects/'.$post->url)}}</loc>
            <lastmod>{{gmdate('Y-m-d\TH:i:s\Z',strtotime($post->updated_at))}}</lastmod>
            <changefreq>daily</changefreq>
            <priority>0.6</priority>
        </url>
    @endforeach
    @foreach ($pages as $page)
        @if($page->url !== 'ceny')
        <url>
            <loc>{{url($page->url)}}</loc>
            <lastmod>{{gmdate('Y-m-d\TH:i:s\Z',strtotime($post->updated_at))}}</lastmod>
            <changefreq>daily</changefreq>
            <priority>0.6</priority>
        </url>
            @endif
    @endforeach
        @foreach ($pages as $page)
            @if($page->url !== 'ceny')
        <url>
            <loc>{{url('ua/'.$page->url)}}</loc>
            <lastmod>{{gmdate('Y-m-d\TH:i:s\Z',strtotime($post->updated_at))}}</lastmod>
            <changefreq>daily</changefreq>
            <priority>0.6</priority>
        </url>
            @endif
    @endforeach
</urlset>
