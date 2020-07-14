.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1395e, %r14
nop
nop
nop
nop
nop
cmp %r15, %r15
movups (%r14), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0xabd6, %rsi
lea addresses_WT_ht+0x1e3d6, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $120, %rcx
rep movsb
nop
and %rsi, %rsi
lea addresses_UC_ht+0x18296, %r14
nop
nop
nop
nop
nop
sub %r13, %r13
movb $0x61, (%r14)
nop
add %r13, %r13
lea addresses_WT_ht+0x444e, %r15
nop
add $52497, %r14
movb $0x61, (%r15)
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0x15ea4, %r12
nop
nop
xor $43988, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r12)
sub $55849, %r12

// Store
lea addresses_PSE+0x2a56, %rbp
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%rbp)
nop
add $33372, %r8

// Store
lea addresses_A+0x15796, %r12
nop
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%r12)
add $33572, %r8

// Load
lea addresses_US+0x156, %r9
nop
nop
add $30761, %rdx
mov (%r9), %esi
nop
nop
cmp %r8, %r8

// Load
lea addresses_RW+0x15856, %r12
nop
and $9939, %r9
movb (%r12), %r8b
nop
nop
nop
and %r8, %r8

// Store
lea addresses_normal+0x6856, %r12
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r12)
nop
nop
and %r9, %r9

// Store
lea addresses_A+0xe0f6, %rbp
nop
nop
nop
nop
cmp $42970, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Load
mov $0x5d48b00000000bbb, %rdx
xor %r9, %r9
mov (%rdx), %r10
nop
nop
nop
add $1767, %rbp

// Faulty Load
lea addresses_normal+0x6856, %r8
nop
nop
add $28434, %rsi
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'00': 1}
00
*/
