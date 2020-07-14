.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1060b, %rsi
lea addresses_A_ht+0x172ff, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $87, %rcx
rep movsq
add $17439, %rax
lea addresses_A_ht+0x16303, %r13
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
and $0xffffffffffffffc0, %r13
movntdq %xmm0, (%r13)
cmp %rdi, %rdi
lea addresses_normal_ht+0x410b, %r11
nop
nop
nop
nop
nop
cmp $54093, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r11)
nop
xor %r11, %r11
lea addresses_WC_ht+0x1dd0b, %rsi
lea addresses_WT_ht+0xe35b, %rdi
nop
nop
nop
nop
dec %rbp
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
add $41626, %rax
lea addresses_WT_ht+0x1cb8b, %rcx
nop
nop
nop
nop
sub $58421, %rdi
movb $0x61, (%rcx)
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0xd60b, %rsi
lea addresses_WC_ht+0x9ef, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $90, %rcx
rep movsw
nop
add $10455, %rdx
lea addresses_normal_ht+0x1310b, %r11
nop
nop
xor $39111, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
add %rax, %rax
lea addresses_A_ht+0x11c8b, %rdi
nop
nop
nop
nop
cmp $49742, %rcx
mov (%rdi), %esi
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xae0b, %rsi
lea addresses_A_ht+0x7efb, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rbp, %rbp
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x1e04b, %r13
add $30849, %r11
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1a10b, %rsi
lea addresses_WC_ht+0x910b, %rdi
nop
cmp %rdx, %rdx
mov $72, %rcx
rep movsb
nop
nop
add $20715, %rax
lea addresses_normal_ht+0x1369b, %rcx
nop
nop
cmp $44635, %rdi
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x1c8bb, %rsi
lea addresses_UC_ht+0x1050b, %rdi
nop
sub %rdx, %rdx
mov $1, %rcx
rep movsq
nop
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rcx
push %rdx

// Faulty Load
lea addresses_D+0x1010b, %r12
sub $17686, %r9
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
