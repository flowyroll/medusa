.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x515c, %rsi
nop
nop
nop
sub $20999, %r8
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x35c, %rcx
dec %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x50dc, %rsi
nop
inc %rcx
movb (%rsi), %dl
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x1b8ee, %rsi
lea addresses_D_ht+0x1665c, %rdi
nop
nop
nop
nop
cmp $52276, %r9
mov $32, %rcx
rep movsq
nop
nop
nop
nop
nop
and $737, %rdx
lea addresses_WT_ht+0x15c, %rsi
lea addresses_D_ht+0x485c, %rdi
dec %r13
mov $24, %rcx
rep movsq
cmp $53431, %rsi
lea addresses_UC_ht+0x215c, %rsi
lea addresses_A_ht+0x1a85c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $23453, %r13
mov $84, %rcx
rep movsb
nop
nop
xor $60793, %rdi
lea addresses_UC_ht+0x14f6, %r13
nop
add %r9, %r9
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
xor $61679, %r8
lea addresses_WC_ht+0xb75c, %rcx
nop
nop
add $13430, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm2
and $0xffffffffffffffc0, %rcx
movntdq %xmm2, (%rcx)
and $57575, %r9
lea addresses_A_ht+0x165bc, %rsi
lea addresses_normal_ht+0x255c, %rdi
nop
nop
nop
nop
cmp $31550, %rdx
mov $89, %rcx
rep movsb
nop
and $61695, %rcx
lea addresses_A_ht+0x1dd14, %rsi
lea addresses_D_ht+0x1d184, %rdi
nop
cmp $24240, %rax
mov $12, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0xf26c, %rdx
nop
nop
nop
nop
nop
xor $19508, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
cmp $63827, %r13
lea addresses_A_ht+0xb9c, %rdx
nop
nop
add %r8, %r8
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %r9
add %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbx
push %rdi
push %rdx

// Faulty Load
mov $0x15c, %rdi
nop
nop
nop
nop
nop
sub $21690, %rdx
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbx
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'e3': 3, 'fa': 2, 'ff': 9}
ff ff ff ff ff ff ff e3 e3 e3 ff ff fa fa
*/
