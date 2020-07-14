.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11196, %rsi
lea addresses_WC_ht+0x111fe, %rdi
clflush (%rdi)
nop
and $1894, %rbp
mov $89, %rcx
rep movsl
sub %r9, %r9
lea addresses_A_ht+0xb07c, %r8
sub $48303, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
and $17023, %r9
lea addresses_A_ht+0x1d776, %r8
nop
cmp %r13, %r13
movb $0x61, (%r8)
nop
nop
inc %rsi
lea addresses_WC_ht+0x17c56, %rsi
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm4, (%rsi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1ee16, %rbp
nop
dec %rcx
vmovups (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
xor $61093, %rdi
lea addresses_WT_ht+0x161d6, %rcx
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0xd5fa, %rsi
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
cmp $24405, %rdi
lea addresses_UC_ht+0xbbd6, %rsi
lea addresses_UC_ht+0x7616, %rdi
nop
xor $14562, %r15
mov $51, %rcx
rep movsb
sub %r9, %r9
lea addresses_D_ht+0x6296, %r8
xor %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
nop
xor $52423, %r9
lea addresses_D_ht+0x11146, %rcx
nop
cmp %rbp, %rbp
mov (%rcx), %rdi
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xd096, %r8
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
nop
nop
cmp $24395, %rsi
lea addresses_WT_ht+0x9696, %r15
nop
nop
nop
nop
lfence
mov (%r15), %rcx
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0xe96, %r8
nop
nop
nop
nop
and %rbp, %rbp
movb $0x61, (%r8)
nop
dec %rdi
lea addresses_normal_ht+0xd696, %rsi
lea addresses_normal_ht+0x733e, %rdi
nop
nop
inc %rbp
mov $124, %rcx
rep movsq
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x7f96, %rsi
lea addresses_D_ht+0x1733e, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x2e96, %r14
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r14)
cmp $27888, %r14

// Store
lea addresses_A+0x1d8ae, %r12
nop
nop
and %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
nop
nop
and $3295, %r13

// Store
lea addresses_WC+0x13696, %r14
clflush (%r14)
cmp %r12, %r12
movw $0x5152, (%r14)
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0xbff6, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $57401, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
nop
dec %rcx

// Load
lea addresses_UC+0x1a696, %r12
nop
nop
nop
and %rdi, %rdi
mov (%r12), %r10d
nop
nop
inc %r14

// Store
lea addresses_US+0xa196, %r13
clflush (%r13)
nop
nop
nop
nop
and $62775, %rcx
movb $0x51, (%r13)
nop
nop
nop
nop
nop
sub $34566, %rdi

// Faulty Load
lea addresses_UC+0xb696, %rdi
nop
nop
and $32228, %rbx
mov (%rdi), %ecx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'52': 1}
52
*/
