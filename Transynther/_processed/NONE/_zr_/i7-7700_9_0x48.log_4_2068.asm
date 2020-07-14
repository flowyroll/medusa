.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
lea addresses_WC_ht+0xfcde, %r12
nop
nop
cmp %r10, %r10
movb (%r12), %r14b
nop
nop
nop
nop
sub $59212, %rbp
lea addresses_WC_ht+0x1b6de, %r9
nop
sub %rcx, %rcx
movups (%r9), %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
cmp $59402, %rcx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_UC+0x4756, %r14
nop
cmp $36640, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
and $22003, %r14

// Store
lea addresses_UC+0x1961e, %r8
add $28789, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_US+0x187de, %r8
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
xor $25091, %r9

// Store
lea addresses_A+0x16a1e, %r15
nop
nop
nop
nop
dec %rcx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
and $17549, %r15

// Faulty Load
lea addresses_WT+0x1d1de, %rcx
clflush (%rcx)
add %r14, %r14
mov (%rcx), %r15w
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'00': 4}
00 00 00 00
*/
