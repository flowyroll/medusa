.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x452e, %r12
nop
cmp %r14, %r14
movups (%r12), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xcfae, %rcx
nop
nop
nop
nop
sub $24863, %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x452e, %rsi
lea addresses_WC_ht+0xda5e, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rdx
mov $92, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x8634, %rdx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x3b41, %r13
add $41660, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
xor $5770, %rcx
lea addresses_A_ht+0x1892e, %rsi
lea addresses_A_ht+0x132e, %rdi
nop
nop
inc %rbx
mov $96, %rcx
rep movsb
nop
nop
cmp $8756, %rdi
lea addresses_normal_ht+0x178ce, %rdi
nop
and %rbx, %rbx
mov (%rdi), %r12w
nop
nop
nop
cmp $60560, %rdi
lea addresses_WC_ht+0x1ae2e, %r14
nop
nop
nop
nop
nop
sub $44241, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x13f96, %r14
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, (%r14)
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x13da6, %rcx
nop
nop
nop
nop
xor $6006, %r12
movl $0x61626364, (%rcx)
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x1032e, %rdi
nop
cmp %rbx, %rbx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
inc %r14
lea addresses_UC_ht+0x1783a, %rcx
nop
sub $20386, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0xcbc, %r12
clflush (%r12)
and $54182, %rcx
movw $0x6162, (%r12)
nop
sub %rbx, %rbx
lea addresses_D_ht+0xe26e, %r13
sub $45321, %r14
mov (%r13), %esi
inc %rcx
lea addresses_WT_ht+0x566e, %rsi
lea addresses_D_ht+0xd40c, %rdi
nop
nop
sub $64452, %rdx
mov $118, %rcx
rep movsb
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x14a2e, %r14
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r14)
nop
nop
add $45476, %r14

// Store
lea addresses_RW+0x172e, %rsi
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%rsi)
nop
nop
inc %rbx

// Faulty Load
lea addresses_D+0x1d12e, %rbx
nop
nop
cmp $54742, %r14
mov (%rbx), %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'36': 203}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
