.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xa3dd, %r15
nop
sub $52909, %r11
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x11e79, %r12
nop
nop
dec %r10
mov (%r12), %esi
nop
nop
inc %rsi
lea addresses_A_ht+0xa339, %r15
inc %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
dec %r8
lea addresses_A_ht+0xb039, %r12
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm1
movups %xmm1, (%r12)
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xa7b9, %rsi
lea addresses_A_ht+0xbb39, %rdi
clflush (%rsi)
xor %r8, %r8
mov $95, %rcx
rep movsl
nop
nop
nop
cmp $20891, %r11
lea addresses_A_ht+0x6b39, %r12
nop
nop
nop
nop
nop
xor %r15, %r15
mov (%r12), %rdi
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x6479, %r8
nop
nop
dec %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0xaff1, %rsi
lea addresses_WC_ht+0x8ccd, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $109, %rcx
rep movsw
nop
nop
nop
nop
and $25018, %r15
lea addresses_UC_ht+0x122d, %rsi
lea addresses_A_ht+0x15a39, %rdi
nop
nop
nop
nop
nop
and $53669, %r12
mov $111, %rcx
rep movsw
nop
nop
nop
cmp $21860, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rbx

// Store
lea addresses_D+0xd8e5, %r11
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r11)
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_D+0x8b39, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'36': 39}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
