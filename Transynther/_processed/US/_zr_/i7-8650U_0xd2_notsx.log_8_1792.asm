.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe180, %rsi
lea addresses_A_ht+0xaf52, %rdi
nop
nop
nop
sub $7854, %rax
mov $43, %rcx
rep movsl
nop
nop
nop
nop
nop
and $25601, %rax
lea addresses_UC_ht+0xeb52, %r10
nop
nop
nop
nop
xor %rax, %rax
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
xor $6610, %r10
lea addresses_WT_ht+0x8f52, %rdi
nop
nop
and $15663, %rsi
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
xor $40776, %r15
lea addresses_WT_ht+0x18f52, %rsi
lea addresses_A_ht+0x10752, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $27, %rcx
rep movsb
xor %rax, %rax
lea addresses_WC_ht+0x14602, %rdi
nop
and %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x15352, %r10
nop
sub $29393, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
nop
nop
nop
sub $49454, %rdi
lea addresses_D_ht+0x7352, %rsi
lea addresses_normal_ht+0x9752, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0xef52, %rsi
lea addresses_WT_ht+0x14b52, %rdi
xor %r10, %r10
mov $115, %rcx
rep movsl
inc %rdi
lea addresses_A_ht+0xc252, %rcx
nop
inc %r9
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
inc %r15
lea addresses_WC_ht+0xcf52, %rsi
lea addresses_WC_ht+0x43ca, %rdi
nop
nop
nop
nop
add $49225, %r15
mov $112, %rcx
rep movsw
nop
nop
nop
nop
and $21802, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_US+0x1df52, %r8
nop
nop
nop
nop
nop
xor $36795, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movaps %xmm2, (%r8)
nop
nop
nop
sub $20218, %rcx

// Store
lea addresses_normal+0xb208, %r14
nop
nop
sub $48710, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r14)
nop
and %rbx, %rbx

// Store
lea addresses_RW+0x7f52, %r8
nop
nop
dec %rbx
movw $0x5152, (%r8)
sub %rbx, %rbx

// Store
lea addresses_PSE+0x1abd2, %r9
nop
nop
and $8507, %r10
movw $0x5152, (%r9)
sub %r9, %r9

// Store
lea addresses_normal+0xe452, %r10
and $8657, %r8
movl $0x51525354, (%r10)
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_US+0x1df52, %r10
nop
nop
nop
inc %rdi
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
