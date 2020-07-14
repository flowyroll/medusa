.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14790, %r10
nop
nop
dec %r14
movups (%r10), %xmm0
vpextrq $0, %xmm0, %rdi
nop
and %rax, %rax
lea addresses_D_ht+0xba90, %rsi
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x16290, %rsi
add $21575, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rsi)
add $56009, %r13
lea addresses_WC_ht+0xb2b8, %rsi
lea addresses_D_ht+0xf490, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
sub $33404, %rdx
mov $65, %rcx
rep movsq
cmp $26828, %r14
lea addresses_D_ht+0x178f8, %r10
nop
nop
nop
sub %rdx, %rdx
movups (%r10), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x16a90, %rsi
lea addresses_A_ht+0x1cc90, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $97, %rcx
rep movsq
xor %r14, %r14
lea addresses_UC_ht+0xf888, %r14
clflush (%r14)
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
sub $64866, %r14
lea addresses_WC_ht+0x7650, %rsi
nop
nop
nop
nop
nop
and %rax, %rax
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
and $53485, %rcx
lea addresses_UC_ht+0xbe90, %rdi
nop
nop
nop
nop
nop
sub $50632, %r13
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
and %rcx, %rcx
lea addresses_D_ht+0x1d690, %rsi
lea addresses_UC_ht+0x23f0, %rdi
nop
nop
nop
sub %r13, %r13
mov $105, %rcx
rep movsb
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x14710, %rcx
nop
nop
add %r13, %r13
mov (%rcx), %r10d
nop
nop
nop
add $6756, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1f490, %rsi
lea addresses_PSE+0x4e90, %rdi
nop
nop
and $42123, %r14
mov $115, %rcx
rep movsb
nop
nop
nop
nop
xor $18929, %r14

// Store
lea addresses_D+0xc20, %r14
nop
nop
cmp $32022, %r12
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_PSE+0x2e90, %r12
nop
nop
sub $10021, %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_D+0x15e90, %r12
nop
add $15494, %r14
movb $0x51, (%r12)
nop
nop
inc %rbp

// Store
lea addresses_RW+0x9fa0, %rbp
nop
nop
sub $30780, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
inc %rbp

// REPMOV
lea addresses_PSE+0x2e90, %rsi
lea addresses_WT+0x156b0, %rdi
cmp $23416, %rax
mov $9, %rcx
rep movsq
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x2e90, %r15
nop
nop
nop
xor %r14, %r14
mov (%r15), %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'52': 16455}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
