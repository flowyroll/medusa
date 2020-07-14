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
lea addresses_normal_ht+0x188f5, %rax
nop
add %rdx, %rdx
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
mfence
lea addresses_D_ht+0x1d205, %r11
nop
sub %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x13e6d, %r12
nop
xor $65442, %rdx
mov (%r12), %si
nop
nop
dec %r11
lea addresses_WT_ht+0xc7fd, %rcx
inc %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rcx)
nop
add $46753, %rax
lea addresses_A_ht+0x74a9, %rsi
lea addresses_normal_ht+0x17509, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $46544, %r11
mov $1, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $20027, %rdi
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
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_UC+0xaac1, %r11
nop
and $25484, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r11)
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_US+0x3965, %rdi
nop
xor %rax, %rax
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'44': 1929, '45': 1819, '00': 90, '12': 1, 'cb': 1, '52': 1, '47': 2}
44 44 44 45 44 45 44 45 45 44 45 44 45 45 44 45 45 45 44 45 44 44 44 45 45 44 45 45 44 44 44 44 44 44 45 45 44 44 44 44 45 45 45 45 45 44 45 45 45 44 44 45 45 44 00 45 45 00 45 45 44 45 45 45 45 45 44 45 45 44 45 45 44 44 44 45 44 45 44 44 44 44 44 44 45 45 45 44 45 45 00 45 45 45 44 44 45 44 45 45 00 45 44 44 45 45 00 45 45 44 45 44 44 44 44 44 45 45 44 45 45 44 45 45 45 44 45 45 44 44 44 44 44 45 44 44 44 44 44 45 44 44 45 44 45 45 45 45 45 44 45 44 45 44 45 45 44 45 45 45 44 45 44 44 44 45 44 45 45 44 45 45 45 44 44 45 45 45 45 44 44 44 45 45 44 45 44 45 44 45 44 45 45 45 45 45 44 45 45 44 45 45 45 45 44 44 44 45 44 45 45 44 44 45 44 45 44 44 45 44 45 45 45 45 44 44 45 45 44 44 45 44 44 45 44 44 45 45 45 45 45 45 44 44 44 44 45 44 45 44 45 45 45 45 45 44 45 45 45 45 44 44 44 45 44 44 44 44 45 45 44 44 44 45 45 45 45 45 45 45 45 44 44 45 45 44 44 45 44 45 45 44 44 44 44 44 45 44 45 45 44 45 45 44 45 45 44 00 45 45 44 45 44 44 44 45 44 44 44 00 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 44 45 44 45 44 00 44 00 45 45 45 44 45 44 44 44 45 44 45 44 44 45 44 44 44 44 45 44 44 45 45 45 45 45 44 45 44 44 45 44 45 00 45 44 45 45 44 45 45 45 45 44 45 44 44 44 44 44 45 44 44 44 45 44 44 45 44 45 44 45 44 44 45 45 44 44 44 45 45 45 45 44 45 44 44 45 45 44 44 45 45 00 45 45 44 45 44 45 45 45 44 44 45 44 45 44 44 45 44 45 45 44 44 44 44 45 44 44 44 44 45 44 44 45 44 44 44 44 44 45 44 44 45 44 00 44 44 44 45 44 45 44 45 45 45 44 44 45 44 44 00 44 45 44 45 45 44 44 45 44 44 45 44 44 45 44 45 45 45 45 45 44 45 45 45 44 44 44 44 44 45 45 45 45 45 44 44 45 44 45 45 44 45 44 45 44 44 44 45 44 45 44 45 45 45 45 45 45 44 44 44 45 44 45 45 45 44 45 44 44 45 44 45 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 00 44 45 45 45 44 45 44 45 44 44 45 45 44 45 45 45 45 44 45 45 44 44 45 44 44 45 44 44 44 45 45 44 44 44 44 44 45 45 00 44 44 45 45 44 45 44 45 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 45 45 45 45 44 45 44 45 45 00 44 44 44 45 44 45 44 44 45 45 44 45 44 00 44 45 44 45 44 45 45 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 45 44 00 45 44 44 45 45 45 44 45 45 44 44 45 44 45 44 44 45 44 45 45 44 45 45 44 45 45 45 45 45 45 44 45 44 45 44 45 45 12 45 44 45 45 44 44 44 45 44 44 45 45 44 45 44 44 44 44 45 45 45 45 45 45 45 45 44 45 45 44 45 44 44 44 44 45 44 45 44 45 44 45 45 44 44 45 45 45 45 45 44 45 45 00 45 45 44 45 45 45 45 44 44 44 44 44 44 45 44 44 45 45 44 45 44 45 45 45 45 44 44 00 44 44 44 44 45 45 45 44 44 44 44 45 45 45 45 44 45 44 45 45 45 00 44 44 44 45 45 44 45 44 44 45 45 45 44 45 45 45 00 44 44 44 45 44 45 44 45 45 44 45 45 44 45 45 44 44 44 44 45 45 45 44 45 44 44 44 45 44 44 45 45 45 00 44 44 44 44 00 44 44 45 45 44 44 44 45 44 44 44 44 45 44 44 45 45 45 44 44 45 44 44 44 45 44 44 44 45 44 44 45 45 45 45 44 44 45 45 45 45 44 44 45 45 44 44 45 45 45 00 45 45 44 44 44 44 44 45 44 44 45 44 44 44 45 45 44 44 45 45 44 44 45 45 45 44 44 44 44 45 45 45 45 45 44 44 45 44 44 44 44 44 00 44 45 44 45 45 45 45 45 45 45 00 44 45 45 44 44 45
*/
