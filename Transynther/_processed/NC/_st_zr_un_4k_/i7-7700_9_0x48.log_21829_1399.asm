.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xce9a, %rsi
cmp $35554, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rsi)
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1237a, %rsi
lea addresses_D_ht+0xe55a, %rdi
nop
nop
sub %r13, %r13
mov $95, %rcx
rep movsb
nop
nop
xor $2314, %rcx
lea addresses_normal_ht+0xf07a, %rdx
nop
dec %r11
mov (%rdx), %edi
xor $38286, %r14
lea addresses_D_ht+0x277a, %r14
inc %r11
movb (%r14), %r13b
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xcb7a, %rsi
lea addresses_UC_ht+0x11b86, %rdi
cmp %r10, %r10
mov $84, %rcx
rep movsq
nop
add %r13, %r13
lea addresses_UC_ht+0xa1ba, %rdi
nop
nop
nop
nop
add $39591, %r13
mov (%rdi), %r14
nop
and $59477, %rdi
lea addresses_UC_ht+0xb7a, %rsi
lea addresses_UC_ht+0x17472, %rdi
nop
and $52714, %r11
mov $18, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x1d67a, %rcx
nop
cmp $2059, %r13
mov (%rcx), %rsi
nop
nop
add $24603, %rdx
lea addresses_A_ht+0x1b87a, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $61743, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1c4b6, %r14
nop
add %rdx, %rdx
mov (%r14), %rcx
sub $51169, %r14
lea addresses_WT_ht+0x6906, %rdi
nop
nop
xor $26527, %rcx
mov (%rdi), %rdx
nop
cmp %r14, %r14
lea addresses_WT_ht+0x5e92, %rsi
lea addresses_WT_ht+0x1677a, %rdi
clflush (%rdi)
nop
nop
nop
add $40587, %r13
mov $111, %rcx
rep movsq
xor $56883, %rsi
lea addresses_A_ht+0x6232, %rdx
nop
cmp $13487, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
nop
nop
xor $31847, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdx

// Store
mov $0x72a, %rbp
nop
and %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
xor $21577, %r9

// Store
mov $0xa72, %r10
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovaps %ymm1, (%r10)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_RW+0x1bb7a, %rbp
sub %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
nop
sub $7444, %rcx

// Store
lea addresses_WT+0x237a, %r13
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r13)
nop
nop
xor $64499, %rbp

// Store
lea addresses_normal+0x1e01a, %r13
nop
dec %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
nop
cmp $34484, %rdx

// Faulty Load
mov $0x29643a000000037a, %rdx
clflush (%rdx)
nop
nop
xor $9721, %r10
movb (%rdx), %cl
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'2c': 1, '58': 21609, '72': 1, '12': 1, '00': 213, '02': 1, '0c': 1, '8a': 1, '28': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 0c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58
*/
