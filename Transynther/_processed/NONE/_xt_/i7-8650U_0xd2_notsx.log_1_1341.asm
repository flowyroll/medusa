.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc27b, %rsi
lea addresses_normal_ht+0x19bdb, %rdi
nop
nop
nop
cmp %r13, %r13
mov $84, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x187db, %r10
nop
nop
nop
nop
dec %r14
movb $0x61, (%r10)
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0xbfdb, %r14
sub $53096, %r10
mov (%r14), %edi
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x11467, %r13
nop
nop
nop
nop
nop
add $32619, %r15
movups (%r13), %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xafdb, %rsi
nop
nop
nop
nop
nop
add $18057, %rdi
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
and $13019, %rdi
lea addresses_WT_ht+0x2a1b, %rsi
lea addresses_UC_ht+0x130db, %rdi
nop
nop
cmp $16264, %r12
mov $70, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0xeb83, %rsi
lea addresses_normal_ht+0x1cbdb, %rdi
nop
nop
nop
and %r13, %r13
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xf55b, %rdi
nop
and $36198, %rcx
movb (%rdi), %r13b
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0xbdb, %rsi
lea addresses_normal+0x67d5, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $30, %rcx
rep movsb
nop
sub %rcx, %rcx

// Store
mov $0x29c82900000002db, %rsi
nop
nop
nop
nop
add $58607, %rdx
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
nop
cmp $41973, %rdi

// Store
lea addresses_UC+0x2bdb, %rax
nop
dec %rsi
movw $0x5152, (%rax)
xor %rcx, %rcx

// Store
lea addresses_UC+0x16db, %r8
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_D+0xebdb, %r14
cmp $39210, %rax
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'36': 1}
36
*/
