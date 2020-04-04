// Auto-generated
let project = new Project('endless');

project.addSources('Sources');
project.addLibrary("C:/Armory/armsdk/armory");
project.addLibrary("C:/Armory/armsdk/iron");
project.addParameter('arm.SceneBuilder');
project.addParameter("--macro keep('arm.SceneBuilder')");
project.addParameter('arm.GemTrait');
project.addParameter("--macro keep('arm.GemTrait')");
project.addParameter('armory.trait.internal.CanvasScript');
project.addParameter("--macro keep('armory.trait.internal.CanvasScript')");
project.addParameter('arm.ObstaculoTrait');
project.addParameter("--macro keep('arm.ObstaculoTrait')");
project.addParameter('arm.PlayerController');
project.addParameter("--macro keep('arm.PlayerController')");
project.addShaders("build_endless/compiled/Shaders/*.glsl", { noembed: true});
project.addShaders("build_endless/compiled/Hlsl/*.glsl", { noprocessing: true, noembed: true });
project.addAssets("build_endless/compiled/Assets/**", { notinlist: true });
project.addAssets("build_endless/compiled/Shaders/*.arm", { notinlist: true });
project.addAssets("Bundled/canvas/MainMenu.files", { notinlist: true });
project.addAssets("Bundled/canvas/MainMenu.json", { notinlist: true });
project.addAssets("Bundled/canvas/Mona Shark.otf", { notinlist: true });
project.addAssets("Bundled/canvas/MyCanvas.files", { notinlist: true });
project.addAssets("Bundled/canvas/MyCanvas.json", { notinlist: true });
project.addAssets("Bundled/canvas/raidercrusader3d.ttf", { notinlist: false });
project.addAssets("C:/Armory/armsdk/armory/Assets/brdf.png", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance_0.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance_1.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance_2.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance_3.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance_4.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance_5.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance_6.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/hosek/hosek_radiance_7.hdr", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/smaa_area.png", { notinlist: true });
project.addAssets("C:/Armory/armsdk/armory/Assets/smaa_search.png", { notinlist: true });
project.addLibrary("C:/Armory/armsdk/lib/zui");
project.addAssets("C:/Armory/armsdk/armory/Assets/font_default.ttf", { notinlist: false });
project.addDefine('arm_hosek');
project.addDefine('arm_deferred');
project.addDefine('arm_csm');
project.addDefine('rp_hdr');
project.addDefine('rp_renderer=Deferred');
project.addDefine('rp_shadowmap');
project.addDefine('rp_shadowmap_cascade=1024');
project.addDefine('rp_shadowmap_cube=512');
project.addDefine('rp_background=World');
project.addDefine('rp_render_to_texture');
project.addDefine('rp_compositornodes');
project.addDefine('rp_antialiasing=SMAA');
project.addDefine('rp_supersampling=1');
project.addDefine('rp_ssgi=SSAO');
project.addDefine('rp_gi=Off');
project.addDefine('arm_noembed');
project.addDefine('arm_soundcompress');
project.addDefine('arm_ui');
project.addDefine('arm_skin');
project.addDefine('arm_particles_gpu');
project.addDefine('arm_particles');


resolve(project);