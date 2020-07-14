.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x89d0, %r12
nop
nop
nop
nop
inc %r10
movw $0x6162, (%r12)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x3f3a, %r13
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r13)
nop
nop
inc %r13
lea addresses_WC_ht+0x18c4a, %rsi
lea addresses_D_ht+0x563a, %rdi
nop
nop
nop
nop
nop
cmp $61395, %r11
mov $14, %rcx
rep movsl
nop
nop
mfence
lea addresses_WC_ht+0xa403, %rcx
nop
sub %r11, %r11
mov (%rcx), %rsi
cmp %rbp, %rbp
lea addresses_UC_ht+0x312a, %rcx
and $49862, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
dec %rcx
lea addresses_UC_ht+0x823a, %rbp
nop
nop
inc %rcx
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
nop
sub $49753, %rdi
lea addresses_A_ht+0x189ba, %rsi
nop
add %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1897a, %rdi
nop
add $45957, %r12
mov (%rdi), %cx
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_WT+0x313a, %r15
cmp $6555, %rax
mov (%r15), %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 7684, '48': 3376, '30': 613, 'ff': 509, '02': 249, '04': 63, '46': 29, '40': 14, '52': 1, '1a': 1, '47': 14, 'c0': 4, 'c8': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 48 00 00 48 30 00 00 48 00 00 48 00 00 48 00 00 48 00 00 48 48 00 00 00 48 00 00 48 00 00 ff 00 00 48 30 00 00 00 48 00 48 00 00 48 48 00 00 00 00 48 00 00 30 48 00 00 00 48 48 00 00 00 00 00 48 00 00 48 48 ff 00 48 00 00 00 00 00 00 00 48 02 00 00 48 00 48 00 48 ff 00 48 00 48 00 00 00 00 48 30 00 00 00 48 00 00 48 00 48 48 30 ff 00 00 00 48 00 00 48 00 48 00 48 00 00 00 48 ff 00 00 48 00 48 00 00 48 00 00 48 48 48 00 00 00 48 00 30 48 48 00 00 00 00 48 00 02 00 00 00 00 00 00 00 48 00 00 00 00 48 ff 48 00 48 00 00 00 00 00 00 00 00 48 30 ff 48 00 00 02 00 00 48 30 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 30 30 ff 00 00 00 00 00 48 00 00 30 00 30 00 04 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 48 00 00 00 00 00 00 00 ff 00 00 48 00 00 00 00 30 48 30 00 00 48 00 00 00 00 00 00 00 00 00 00 00 30 48 48 48 00 00 00 ff 48 00 00 00 48 30 ff 00 00 00 00 00 48 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 02 00 48 00 00 ff 00 00 00 48 30 00 00 00 00 48 48 48 48 00 00 ff 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 48 00 00 00 48 00 48 00 00 00 00 00 46 00 48 00 48 00 48 30 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 48 00 00 00 00 00 48 48 48 00 00 00 48 ff 00 48 ff 30 00 00 00 30 48 30 48 00 00 00 00 00 48 00 00 00 02 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 48 00 48 00 00 30 00 00 30 00 ff 48 00 30 00 48 00 00 48 00 00 00 30 00 ff 00 48 00 00 ff 00 48 00 48 ff 00 48 48 30 00 ff 00 48 48 48 48 48 00 00 ff 30 48 00 00 00 48 02 00 00 48 00 48 00 00 00 48 48 00 30 48 02 00 00 ff 48 00 48 00 00 48 48 00 00 ff ff 00 30 48 ff 00 00 48 00 00 48 48 00 00 ff 00 48 00 48 48 48 00 00 00 00 00 00 48 00 48 00 00 48 00 00 30 00 48 00 00 00 00 00 00 ff 00 48 00 46 00 00 30 48 48 48 30 00 48 00 48 48 00 00 48 00 48 00 00 00 ff 00 00 00 48 00 48 30 48 48 00 48 00 30 ff 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 04 00 00 00 00 00 00 48 00 00 00 00 30 48 00 00 00 00 00 48 00 00 00 02 00 00 00 00 30 48 00 00 ff 00 48 00 00 48 48 48 48 00 00 00 00 30 48 00 ff 00 48 48 00 48 48 00 00 ff 00 00 00 48 00 00 ff 48 48 00 48 00 00 00 00 48 00 48 00 48 00 48 30 48 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 ff 00 48 48 00 00 48 00 00 00 00 30 48 00 00 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 30 ff 00 00 00 48 00 00 48 00 00 00 00 00 48 48 00 00 00 00 48 40 00 48 00 00 ff 04 48 00 48 48 00 00 30 30 02 00 00 30 00 00 00 00 02 48 00 48 00 00 00 00 00 00 48 00 00 00 48 00 48 48 00 00 00 00 48 00 00 30 00 00 00 00 00 00 00 48 48 00 48 48 00 00 30 48 48 00 30 00 00 30 48 00 00 30 30 48 00 00 48 ff 00 48 00 00 00 00 48 00 00 00 48 00 48 48 48 00 00 00 00 48 48 00 00 48 00 00 ff 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 48 30 30 ff 30 00 00 02 ff 00 00 00 00 00 48 00 00 00 ff 00 00 00 00 00 48 00 00 00 00 00 ff 00 00 00 48 ff 02 00 48 00 00 48 00 00 02 00 30 48 00 48 00 00 48 00 00 00 00 00 48 48 00 00 00 00 48 00 48 48 00 00 48 00 48
*/
