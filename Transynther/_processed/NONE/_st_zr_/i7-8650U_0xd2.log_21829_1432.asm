.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x87b2, %r10
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, (%r10)
nop
and %r14, %r14
lea addresses_D_ht+0x18f72, %rax
nop
nop
nop
nop
nop
dec %rsi
movb (%rax), %r8b
nop
xor %rax, %rax
lea addresses_D_ht+0x148f2, %r9
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x14e72, %r10
nop
nop
nop
nop
cmp $31159, %r8
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0xcaf2, %rsi
lea addresses_UC_ht+0x14c22, %rdi
nop
nop
nop
inc %r10
mov $3, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1c6f2, %rsi
lea addresses_UC_ht+0x177b2, %rdi
nop
nop
nop
nop
inc %r14
mov $69, %rcx
rep movsb
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xcbf2, %r9
nop
nop
nop
nop
and $65021, %r11
movw $0x6162, (%r9)
nop
xor %r10, %r10
lea addresses_normal_ht+0x12752, %rsi
nop
and %r11, %r11
mov (%rsi), %rax
and $52087, %r14
lea addresses_WC_ht+0xc8b2, %rsi
lea addresses_UC_ht+0x41f2, %rdi
xor %rax, %rax
mov $3, %rcx
rep movsq
inc %rcx
lea addresses_A_ht+0x87f2, %rcx
clflush (%rcx)
add $30523, %r9
movl $0x61626364, (%rcx)
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x18310, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %r14
mov (%rsi), %rcx
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0xd0f2, %rsi
lea addresses_D_ht+0x4732, %rdi
nop
and %r8, %r8
mov $19, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x5ea6, %r14
nop
xor %rax, %rax
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
cmp $54338, %rsi
lea addresses_UC_ht+0x12bf2, %rsi
lea addresses_normal_ht+0x3e72, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $15, %rcx
rep movsl
nop
nop
cmp $17160, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_D+0x141f2, %rax
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WT+0x1adf2, %r10
nop
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%r10)
add $14697, %r10

// Store
lea addresses_PSE+0x17952, %r12
nop
nop
nop
add $48217, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_WT+0xddf2, %rcx
clflush (%rcx)
nop
xor %rax, %rax
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'00': 21828, '30': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
