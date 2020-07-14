.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14306, %rsi
lea addresses_normal_ht+0xdc86, %rdi
nop
nop
nop
sub $56207, %r9
mov $87, %rcx
rep movsq
inc %rcx
lea addresses_normal_ht+0x5306, %rcx
sub %rax, %rax
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x16d06, %rsi
lea addresses_WC_ht+0x5a7f, %rdi
nop
nop
dec %rbp
mov $90, %rcx
rep movsw
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x2390, %rcx
nop
nop
and %rax, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x3486, %rax
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%rax)
nop
nop
add $21947, %rbp
lea addresses_D_ht+0xb726, %rsi
lea addresses_UC_ht+0x10d86, %rdi
nop
nop
nop
nop
nop
xor $12514, %r11
mov $26, %rcx
rep movsq
nop
add %rbp, %rbp
lea addresses_D_ht+0x1cb06, %rcx
nop
nop
nop
nop
nop
cmp $43164, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0xb066, %rbp
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rbp)
add $32877, %rbp
lea addresses_WT_ht+0x6506, %rax
nop
nop
nop
nop
dec %rcx
mov (%rax), %edi
nop
nop
nop
add $40377, %rdi
lea addresses_WT_ht+0xaaca, %rax
nop
nop
nop
nop
cmp %rdx, %rdx
movb (%rax), %cl
nop
nop
and $54631, %rbp
lea addresses_WC_ht+0x2286, %rsi
lea addresses_normal_ht+0xfbfe, %rdi
nop
nop
nop
nop
cmp $48930, %r11
mov $59, %rcx
rep movsb
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0xde6c, %rsi
lea addresses_normal_ht+0x9106, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $50830, %r11
mov $74, %rcx
rep movsw
nop
nop
nop
and $35216, %r11
lea addresses_WC_ht+0x208f, %rax
cmp $44986, %r11
movl $0x61626364, (%rax)
sub %rdi, %rdi
lea addresses_WT_ht+0x11266, %r11
nop
add $35922, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
add $55474, %rdi
lea addresses_UC_ht+0xf106, %rdx
clflush (%rdx)
nop
nop
nop
nop
dec %rdi
mov (%rdx), %rbp
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_D+0x14306, %r10
clflush (%r10)
nop
nop
nop
nop
xor %rcx, %rcx
vmovaps (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'49': 147, '00': 4753, '46': 90, '48': 16825, '44': 14}
00 00 00 48 48 48 48 48 48 48 48 00 48 00 48 00 00 48 48 48 48 48 48 00 48 48 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 00 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 00 48 00 00 00 48 00 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 00 48 48 00 48 48 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 00 48 00 00 48 48 00 48 00 00 48 48 00 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 48 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 49 48 00 00 48 48 48 48 48 48 00 48 00 48 00 00 48 48 48 00 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 49 00 48 00 00 48 48 48 48 48 48 00 48 48 00 48 00 48 00 48 48 48 48 48 48 00 48 00 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 00 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 00 00 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 00 48 48 48 48 00 48 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 00 00 48 00 00 00 00 48 48 48 48 48 48 00 48 00 48 00 00 48 48 00 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 46 48 48 48 00 46 48 00 00 00 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 00 48 49 48 00 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 00 48 48 48 48 00 48 48 48 00 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 00 48 48 00 48 00 00 48 48 48 48 00 48 48 00 48 00 00 48 48 48 48 48 48 48 00 48 49 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 00 48 48 00 00 48 48 00 48 00 00 48 48 00 49 48 00 00 48 48 48 48 48 48 00 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 49 48 48 00 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 00 48 48 49 44 00 00 48 00 48 48 48 48 48 00 48 00 00 00 00 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 00 48 48 48 48 48 48 00 48 48 00 00 00 00 48 48 48 48 48 48 48 48 48 48 00 48 00 00 00 00 48 48 48 48 00 48 48 00 00 48 48 00 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48
*/
