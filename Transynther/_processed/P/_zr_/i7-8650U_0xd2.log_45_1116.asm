.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x15a42, %r11
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
and $0xffffffffffffffc0, %r11
vmovaps %ymm1, (%r11)
nop
nop
nop
nop
nop
add $43139, %r12
lea addresses_normal_ht+0x7842, %rsi
nop
inc %rax
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x16c42, %rdi
nop
nop
nop
xor $4118, %rdx
movl $0x61626364, (%rdi)
xor $18960, %rdx
lea addresses_WT_ht+0x1442, %rsi
lea addresses_normal_ht+0x8d42, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $115, %rcx
rep movsw
xor %r12, %r12
lea addresses_WC_ht+0x1c42, %rsi
lea addresses_D_ht+0x1c642, %rdi
nop
nop
nop
add %rax, %rax
mov $6, %rcx
rep movsb
nop
nop
nop
sub $62053, %rcx
lea addresses_WC_ht+0x11c42, %rsi
lea addresses_D_ht+0xdb10, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $51, %rcx
rep movsw
dec %rdx
lea addresses_UC_ht+0x1b442, %r12
nop
nop
nop
add %rdx, %rdx
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x9da2, %rsi
lea addresses_D_ht+0x1b0c2, %rdi
nop
nop
and %rdx, %rdx
mov $29, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x1ef3a, %rdi
nop
xor %rax, %rax
movw $0x6162, (%rdi)
nop
nop
dec %rax
lea addresses_D_ht+0x14eba, %rsi
lea addresses_normal_ht+0x20ea, %rdi
nop
nop
nop
xor %r12, %r12
mov $62, %rcx
rep movsq
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x11442, %r12
and %rax, %rax
mov (%r12), %esi
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x19c56, %r12
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%r12)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x143b0, %rax
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rax)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1442, %rsi
lea addresses_WC_ht+0xe042, %rdi
clflush (%rsi)
nop
nop
nop
sub $53775, %rax
mov $33, %rcx
rep movsq
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rdi
push %rdx

// Faulty Load
mov $0x442, %rax
nop
nop
nop
nop
sub $43774, %r8
movups (%rax), %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'00': 45}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
