.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1763b, %rcx
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rcx)
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x371b, %r8
nop
and $21688, %rbx
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
and $34092, %r13
lea addresses_UC_ht+0xd2db, %rsi
lea addresses_WC_ht+0x192fb, %rdi
inc %rax
mov $109, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_A_ht+0x4679, %rsi
lea addresses_A_ht+0x218b, %rdi
nop
nop
nop
nop
nop
and $25731, %r9
mov $3, %rcx
rep movsl
nop
nop
nop
dec %r9
lea addresses_A_ht+0xe95b, %rax
nop
nop
nop
nop
nop
and %rbx, %rbx
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
dec %rdi
lea addresses_UC_ht+0xe0fb, %rcx
add %r13, %r13
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x184fb, %rsi
lea addresses_normal+0x1aefb, %rdi
nop
nop
nop
nop
inc %rdx
mov $60, %rcx
rep movsb
nop
nop
nop
nop
add $30637, %rbx

// Store
lea addresses_UC+0x1c8fb, %rdi
nop
add $46266, %rbp
movw $0x5152, (%rdi)
nop
nop
add $49585, %rbx

// Store
lea addresses_PSE+0x150d7, %rsi
nop
nop
inc %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovntdq %ymm5, (%rsi)
xor $64100, %rax

// Faulty Load
lea addresses_normal+0xdafb, %rbp
nop
add $936, %rax
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'34': 1}
34
*/
