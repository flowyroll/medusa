.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xfc84, %rsi
lea addresses_A_ht+0x98c2, %rdi
nop
nop
nop
dec %r8
mov $54, %rcx
rep movsl
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x47c2, %r9
nop
nop
nop
nop
sub $39672, %r13
movb (%r9), %cl
and %r14, %r14
lea addresses_UC_ht+0x1e4c2, %rsi
lea addresses_WC_ht+0x1bd4a, %rdi
nop
nop
cmp $7915, %r8
mov $81, %rcx
rep movsq
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1ac2, %rsi
lea addresses_A_ht+0x5ac2, %rdi
nop
inc %rdx
mov $75, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $48508, %rdx
lea addresses_A_ht+0xcd22, %r14
and $29237, %rdi
mov (%r14), %r9w
nop
nop
nop
nop
nop
and $53930, %rdi
lea addresses_normal_ht+0x130c2, %r9
inc %rdx
mov (%r9), %rdi
nop
nop
nop
inc %r9
lea addresses_normal_ht+0xeea, %r8
nop
nop
nop
lfence
vmovups (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x12c62, %rsi
lea addresses_UC_ht+0xf4c2, %rdi
clflush (%rdi)
inc %rdx
mov $13, %rcx
rep movsb
nop
nop
nop
add $26168, %r9
lea addresses_D_ht+0x680a, %r14
nop
nop
nop
inc %rdx
mov (%r14), %ecx
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x17a22, %rsi
lea addresses_WC_ht+0xe0c2, %rdi
nop
cmp $30485, %r14
mov $42, %rcx
rep movsq
cmp $62949, %rcx
lea addresses_normal_ht+0x1667e, %r8
nop
nop
nop
sub $49234, %rcx
mov (%r8), %r14d
nop
cmp $31709, %r13
lea addresses_WT_ht+0x7d02, %rdi
nop
nop
add $43966, %r14
movb (%rdi), %cl
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0xa4f2, %r9
nop
nop
nop
nop
add $18307, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_WC+0x1e44a, %rsi
nop
cmp %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
cmp $27118, %r15

// Store
lea addresses_UC+0xc2, %r8
nop
nop
nop
nop
xor $49504, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
nop
add $45202, %r8

// Faulty Load
mov $0x7adc4e00000000c2, %rbx
nop
nop
nop
nop
nop
sub $38487, %r9
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 2, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'58': 21208, 'e0': 297, '00': 324}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 e0 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 00 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58
*/
