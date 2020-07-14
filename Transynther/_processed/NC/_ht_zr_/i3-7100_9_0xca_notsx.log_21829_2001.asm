.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a1a0, %r8
nop
nop
nop
sub %r14, %r14
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
sub %r13, %r13
lea addresses_A_ht+0x8b20, %r8
nop
cmp $23617, %r9
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xd078, %rsi
lea addresses_A_ht+0xac20, %rdi
nop
nop
nop
nop
xor $40903, %r8
mov $45, %rcx
rep movsb
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1a220, %rdi
nop
nop
nop
nop
inc %r8
movl $0x61626364, (%rdi)
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0xd2e0, %r13
nop
nop
nop
nop
cmp $32700, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
and $42993, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_A+0x1e900, %r9
add %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
and %r15, %r15

// Store
lea addresses_WC+0x1c276, %r8
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
add $46224, %rbx

// Load
mov $0x88c, %r13
nop
nop
cmp $25069, %r15
mov (%r13), %edi
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_WT+0x81c0, %r9
nop
nop
xor %r15, %r15
movw $0x5152, (%r9)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_normal+0x15bb0, %rdi
nop
nop
nop
nop
xor $50009, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rdi)
cmp $48115, %rdi

// Store
lea addresses_A+0x2528, %rdi
sub %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
add %rdi, %rdi

// Store
lea addresses_WT+0x1b820, %r10
nop
nop
nop
nop
sub $30752, %rdi
movb $0x51, (%r10)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WT+0x1fa20, %rdi
nop
inc %rbx
movl $0x51525354, (%rdi)
add $55702, %rdi

// Store
lea addresses_D+0x1b350, %rdi
nop
nop
nop
nop
nop
xor $12461, %r10
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
sub $20203, %rdi

// Faulty Load
mov $0x5a12e00000000c20, %r13
nop
nop
nop
cmp $43162, %r15
movups (%r13), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'45': 614, '44': 20531, '00': 318, '49': 366}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 00 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 00 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 49 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 49 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44
*/
