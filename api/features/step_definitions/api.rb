Dado('que exista um CNPJ com concessão') do
    
end
  
Quando('solicito a API de venda a prazo no parceito') do
    $response = HTTParty.post('https://admin.rac.dev.totvs.app/totvs.rac/connect/token', :body => 'client_id=cce0e5053fdd4281bfff4f2a94e4ac15&client_secret=d992ca9a27f14b6f8bdd178ed2cceda5&grant_type=client_credentials&scope=authorization_api');

    puts "#{$response.code} - #{$response.message}";
    #puts $response.body;    
    #puts $response["access_token"]

   # 00746432000146 - permite
   # 61655742000140 - não permite

    #HTTParty.post("https://risk.dev.totvs.app/api-customer/api/billing/installment_sale/00746432000146", :headers => { "Authorization" => auth}, :body => "@contact")

    auth = "Bearer " + $response["access_token"]

    #puts auth;

    $responseVenda = HTTParty.get("https://risk.dev.totvs.app/api-customer/api/billing/installment_sale/00746432000146", :headers => { "Authorization" => auth});
    
    #puts $responseVenda.body;
    
    puts $responseVenda["result"]["faturamentoAPrazoParceiro"]["permiteFaturarAPrazoNoParceiro"];
end
  
Então('a venda é permitida') do
    
end

Dado('que exista um {string}" com concessão') do |cnpj|
    response_token = HTTParty.post('https://admin.rac.dev.totvs.app/totvs.rac/connect/token', :body => 'client_id=cce0e5053fdd4281bfff4f2a94e4ac15&client_secret=d992ca9a27f14b6f8bdd178ed2cceda5&grant_type=client_credentials&scope=authorization_api');
    $auth = "Bearer " + response_token["access_token"]
    $cnpj = cnpj
end

Quando('solicito a API de venda a prazo') do
    $response_api = HTTParty.get("https://risk.dev.totvs.app/api-customer/api/billing/installment_sale/#{$cnpj}", :headers => { "Authorization" => $auth});
end

Entao('o retorno é o {string}"') do |status|
    expect($response_api["result"]["faturamentoAPrazoParceiro"]["permiteFaturarAPrazoNoParceiro"]).to eq(status);
end