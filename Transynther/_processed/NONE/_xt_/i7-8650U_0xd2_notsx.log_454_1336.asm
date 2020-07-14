.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5d0, %r14
nop
nop
nop
nop
and %r13, %r13
movb $0x61, (%r14)
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x13def, %r10
nop
sub $20885, %r8
movups (%r10), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x1edf8, %r10
nop
add $33867, %rcx
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x1d678, %r14
add %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
add $11314, %r8
lea addresses_WC_ht+0x720, %rsi
lea addresses_WT_ht+0x7ec9, %rdi
clflush (%rdi)
nop
nop
dec %r11
mov $9, %rcx
rep movsl
dec %r13
lea addresses_A_ht+0x100d4, %rsi
lea addresses_WC_ht+0x1ea50, %rdi
nop
and $21995, %r10
mov $86, %rcx
rep movsl
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdx

// Store
lea addresses_A+0x348, %r14
nop
xor $18396, %r15
movw $0x5152, (%r14)
nop
nop
xor $13744, %rbx

// Store
lea addresses_US+0x156f8, %rbx
clflush (%rbx)
nop
nop
nop
inc %rdx
movb $0x51, (%rbx)
nop
nop
dec %rdx

// Store
lea addresses_PSE+0x123a0, %r15
clflush (%r15)
nop
sub %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
nop
and $58978, %r12

// Faulty Load
lea addresses_normal+0xe678, %r15
dec %r12
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'34': 454}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
