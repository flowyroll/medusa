.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8304, %r15
nop
xor $29857, %rdi
mov (%r15), %r10
and $12954, %r13
lea addresses_A_ht+0x440c, %r15
nop
nop
nop
add $36095, %rbx
movl $0x61626364, (%r15)
xor $35124, %r10
lea addresses_WC_ht+0x15b24, %r13
nop
nop
xor %r8, %r8
mov (%r13), %edi
nop
nop
xor $47532, %rbx
lea addresses_UC_ht+0x6364, %rbx
clflush (%rbx)
nop
xor $11042, %r9
movw $0x6162, (%rbx)
nop
nop
inc %r9
lea addresses_D_ht+0x9324, %r10
nop
nop
nop
nop
nop
dec %rdi
movb $0x61, (%r10)
sub %rbx, %rbx
lea addresses_WC_ht+0x14f14, %r13
nop
nop
nop
nop
add %r8, %r8
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
and %rbx, %rbx
lea addresses_UC_ht+0xaf24, %rsi
lea addresses_WT_ht+0x8a24, %rdi
nop
nop
inc %r10
mov $62, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_A_ht+0x1bd44, %r10
nop
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r10
movaps %xmm3, (%r10)
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x1b298, %rsi
lea addresses_normal_ht+0x101d0, %rdi
nop
nop
dec %r8
mov $45, %rcx
rep movsb
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x16d24, %r8
nop
nop
nop
nop
nop
xor $62871, %rdi
vmovups (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
cmp $1084, %rbx
lea addresses_D_ht+0xa04, %rsi
lea addresses_D_ht+0x18a64, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $24, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x12fa4, %r9
nop
nop
nop
nop
xor %r8, %r8
mov (%r9), %rbx
nop
nop
nop
nop
nop
add $62872, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_UC+0x14724, %rsi
add $29472, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
nop
nop
inc %rbx

// Store
lea addresses_RW+0x1ff24, %r15
nop
nop
nop
nop
nop
add $9384, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_RW+0x1566f, %rax
xor %rbp, %rbp
movb $0x51, (%rax)
nop
inc %r15

// Faulty Load
lea addresses_RW+0x1ff24, %rdi
sub $4698, %rbp
mov (%rdi), %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
