.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1405a, %rsi
lea addresses_WC_ht+0x8af2, %rdi
cmp %r9, %r9
mov $67, %rcx
rep movsw
and $36512, %r10
lea addresses_WT_ht+0xab8f, %rsi
lea addresses_WT_ht+0xa85a, %rdi
nop
nop
cmp $20599, %r12
mov $5, %rcx
rep movsl
nop
cmp $60495, %rcx
lea addresses_WC_ht+0x71d2, %r9
inc %r14
movl $0x61626364, (%r9)
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x1b05a, %rsi
lea addresses_WT_ht+0x1711a, %rdi
nop
nop
cmp %r12, %r12
mov $32, %rcx
rep movsq
nop
and $6298, %r10
lea addresses_D_ht+0x27a0, %r10
nop
nop
nop
nop
nop
sub $4326, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r10)
nop
nop
inc %r14
lea addresses_A_ht+0x522a, %r12
nop
nop
nop
and $32549, %r14
mov (%r12), %r10
xor %r12, %r12
lea addresses_WC_ht+0xf676, %r12
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
sub $2273, %r9
lea addresses_A_ht+0x15e6a, %rcx
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_normal+0x1305a, %r10
nop
nop
cmp $34575, %rbp
mov (%r10), %r13
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_normal+0x1305a, %rcx
nop
nop
dec %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_UC+0x1601a, %rbp
clflush (%rbp)
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_normal+0xa45a, %rbx
nop
nop
nop
cmp $37371, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
nop
nop
nop
xor $22451, %rbp

// Store
mov $0x48a, %r10
nop
nop
nop
inc %rcx
movb $0x51, (%r10)
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_normal+0x1305a, %r10
nop
xor %rcx, %rcx
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'34': 1}
34
*/
