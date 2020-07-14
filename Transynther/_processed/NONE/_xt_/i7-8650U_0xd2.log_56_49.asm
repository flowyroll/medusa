.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1be2b, %rsi
nop
nop
nop
nop
nop
inc %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rax
cmp $52776, %r12
lea addresses_WT_ht+0x256b, %r11
nop
nop
nop
nop
nop
dec %rax
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
inc %rcx
lea addresses_WT_ht+0x722b, %rsi
lea addresses_normal_ht+0xfc2b, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $32939, %r11
mov $5, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x196c5, %rsi
lea addresses_UC_ht+0x183ab, %rdi
xor $8751, %rbp
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0xfdab, %r11
clflush (%r11)
cmp %r12, %r12
movl $0x61626364, (%r11)
nop
nop
cmp $23301, %r11
lea addresses_WC_ht+0xb467, %r11
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r11)
add $38676, %r11
lea addresses_WC_ht+0x1c22b, %rsi
lea addresses_normal_ht+0x1022b, %rdi
nop
nop
sub %r12, %r12
mov $2, %rcx
rep movsb
nop
nop
cmp $59841, %rbp
lea addresses_WT_ht+0x18c2b, %rsi
lea addresses_WC_ht+0x155eb, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $113, %rcx
rep movsl
and $4355, %rsi
lea addresses_D_ht+0x1742b, %rsi
lea addresses_WC_ht+0x1922b, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rbp, %rbp
mov $109, %rcx
rep movsl
cmp $58691, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rsi

// Faulty Load
lea addresses_D+0x7a2b, %r13
nop
nop
nop
nop
add %rsi, %rsi
movb (%r13), %r9b
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'36': 56}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
