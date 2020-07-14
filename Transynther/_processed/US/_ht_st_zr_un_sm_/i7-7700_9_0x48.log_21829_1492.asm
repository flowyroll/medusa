.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14592, %rsi
lea addresses_UC_ht+0x2862, %rdi
nop
nop
nop
nop
nop
cmp $1925, %rbp
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $24689, %r14
lea addresses_UC_ht+0x4a22, %rsi
lea addresses_UC_ht+0x1a87a, %rdi
nop
nop
nop
add $25431, %rdx
mov $82, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x18652, %rsi
nop
nop
nop
sub $49813, %rax
mov (%rsi), %rcx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x1c95c, %rdx
xor $25859, %r14
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %rax
nop
inc %rdx
lea addresses_WT_ht+0xf62e, %rsi
lea addresses_A_ht+0xcbb8, %rdi
nop
inc %r14
mov $96, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $1868, %rsi
lea addresses_WC_ht+0xe462, %rsi
lea addresses_WT_ht+0x4762, %rdi
nop
nop
sub %r12, %r12
mov $95, %rcx
rep movsl
nop
nop
nop
sub $33719, %r12
lea addresses_WC_ht+0x14b62, %r14
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r14)
nop
sub %r14, %r14
lea addresses_A_ht+0xebe2, %rsi
lea addresses_D_ht+0x1dafa, %rdi
nop
nop
nop
and $10416, %rax
mov $25, %rcx
rep movsl
nop
add $47053, %rdi
lea addresses_WC_ht+0x1eba2, %rax
nop
nop
nop
nop
cmp $59067, %rdi
movb $0x61, (%rax)
nop
nop
sub $2578, %rdx
lea addresses_A_ht+0x5ea, %r12
nop
nop
cmp $37514, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r12)
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rdx

// Load
lea addresses_UC+0x25a, %r14
nop
add %r13, %r13
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
xor %r14, %r14

// Store
lea addresses_D+0x1e82, %rdx
nop
nop
nop
nop
inc %r12
movw $0x5152, (%rdx)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_US+0xdb62, %rbp
add $39581, %r9
movl $0x51525354, (%rbp)
nop
nop
cmp %r13, %r13

// Store
lea addresses_normal+0x1cde2, %r9
and $5837, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r9)
and %r9, %r9

// Store
lea addresses_US+0x11d47, %r13
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_US+0xdb62, %r9
nop
dec %r12
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'4f': 56, '79': 1, '32': 1, '4e': 48, 'b6': 1, 'aa': 7, 'ee': 1, '18': 1, '92': 1, '44': 9, '2b': 2, '29': 8, '86': 5, 'd4': 1, '3b': 3, '9b': 4, '3e': 1, 'b4': 2, '1a': 1, '85': 4, 'fa': 2, '6e': 1, '89': 2, '00': 13243, '6d': 2, '30': 1, '49': 6463, 'e9': 2, '5f': 5, '54': 3, '03': 1, '2d': 1, '45': 1943, '1e': 1, 'c9': 1, '97': 1}
49 00 30 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 00 00 49 00 00 49 49 00 00 49 00 00 49 49 49 00 49 00 00 49 49 00 00 49 49 00 49 49 49 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 49 49 45 00 00 00 00 49 00 00 49 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 45 00 00 00 45 45 00 45 00 45 00 45 45 00 45 00 49 00 49 49 00 45 00 00 00 00 00 00 00 49 00 00 49 49 49 49 49 00 00 49 00 00 49 49 49 49 00 49 00 00 00 00 49 49 49 45 49 00 00 49 49 49 00 00 49 49 00 00 00 49 49 00 00 45 49 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 49 49 00 49 49 49 00 00 00 49 49 00 49 00 00 00 49 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 49 49 00 49 00 49 49 00 49 49 49 00 49 00 45 45 00 00 00 00 00 00 45 00 00 00 00 49 49 00 00 45 45 00 00 45 45 00 45 45 00 00 00 45 00 00 45 45 45 45 45 45 45 00 00 00 49 49 00 00 49 00 00 00 00 00 49 00 49 49 49 49 00 00 49 49 49 49 49 00 49 00 00 45 00 49 00 49 49 00 49 45 00 49 00 49 49 00 00 00 00 00 49 00 49 00 49 00 49 49 00 45 45 45 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 49 00 49 49 00 00 00 49 49 49 49 49 49 00 00 00 00 00 49 45 00 00 49 49 49 00 00 49 00 49 49 49 00 00 00 49 00 00 49 49 00 49 00 49 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 49 49 00 00 00 45 00 00 49 49 49 00 00 00 00 49 00 49 49 49 00 00 00 49 49 49 00 49 49 00 49 49 49 00 49 49 49 00 49 00 49 00 00 49 00 49 49 49 00 00 00 00 00 00 49 49 00 00 00 00 00 00 49 49 00 00 45 45 45 45 00 45 00 00 45 00 45 45 00 45 45 49 00 00 00 00 00 00 49 49 49 00 49 00 00 00 49 49 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 49 49 00 00 00 45 45 00 45 45 45 00 49 00 49 49 49 00 00 00 00 49 49 49 00 49 49 00 00 00 00 00 45 00 45 00 45 49 00 00 00 49 49 00 49 00 49 49 49 49 49 49 49 49 00 00 00 00 00 49 49 49 49 49 00 00 00 49 49 49 49 00 00 49 49 49 00 49 00 00 00 00 49 00 45 45 45 00 00 00 00 49 49 00 49 49 49 00 49 49 00 00 49 00 00 45 45 45 00 00 00 00 00 45 45 45 45 00 45 45 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 45 45 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 49 49 00 49 49 00 00 49 49 49 00 00 00 00 45 00 00 49 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 4f 00 4f 4f 4f 4f 00 00 49 49 00 49 00 49 00 00 00 00 00 00 49 49 00 49 00 49 49 49 49 00 49 49 49 00 00 00 49 49 49 00 00 45 45 00 45 45 45 45 45 00 45 45 00 00 00 00 00 45 45 00 45 00 45 45 00 45 00 00 45 00 45 00 00 00 00 00 45 45 00 00 00 00 00 49 00 49 49 00 45 00 45 00 45 00 45 00 00 00 45 00 00 00 00 00 45 45 00 45 00 00 00 45 00 49 49 00 00 00 49 49 00 00 00 49 49 49 00 00 00 00 49 49 49 49 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 49 49 49 00 00 00 00 00 00 49 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 49 00 00 00 00 45 49 00 00 00 00 00 00 49 00 49 00 00 45
*/
