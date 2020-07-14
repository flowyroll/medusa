.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd813, %rsi
lea addresses_WT_ht+0xbc53, %rdi
xor %r9, %r9
mov $12, %rcx
rep movsb
inc %rdx
lea addresses_normal_ht+0x1d53, %rsi
lea addresses_D_ht+0x8293, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $43245, %r14
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x17e13, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor %r13, %r13
mov (%rdx), %rcx
nop
sub %r14, %r14
lea addresses_normal_ht+0x3013, %r14
nop
nop
add $8627, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x13513, %rsi
sub $26719, %r9
mov (%rsi), %edi
nop
nop
sub $33788, %rcx
lea addresses_normal_ht+0xb401, %r14
xor $49528, %rdi
mov (%r14), %rcx
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x1d713, %rsi
lea addresses_WC_ht+0x63a3, %rdi
clflush (%rdi)
nop
add $57999, %r13
mov $27, %rcx
rep movsb
nop
and %rsi, %rsi
lea addresses_WC_ht+0xdc13, %r13
nop
nop
nop
nop
sub $60378, %rdi
mov (%r13), %r14
sub $47188, %rdx
lea addresses_UC_ht+0xf313, %r9
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
and $0xffffffffffffffc0, %r9
vmovntdq %ymm5, (%r9)
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x448c, %r10
nop
nop
nop
add $33537, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
dec %r12

// REPMOV
lea addresses_UC+0xca93, %rsi
lea addresses_WC+0x18c33, %rdi
and %r12, %r12
mov $127, %rcx
rep movsb
cmp %r9, %r9

// Store
mov $0x5fd, %r12
nop
dec %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)

// Exception!!!
nop
nop
mov (0), %r12
and $63993, %rsi

// Store
lea addresses_WC+0x17413, %r12
nop
nop
nop
cmp $8648, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movaps %xmm3, (%r12)
nop
add $63733, %rsi

// Store
lea addresses_A+0x5813, %rbx
nop
cmp $24811, %r12
movw $0x5152, (%rbx)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_RW+0x18e93, %rsi
nop
nop
nop
nop
and $640, %r10
movw $0x5152, (%rsi)
dec %rbx

// Load
lea addresses_WT+0x10ed3, %r12
clflush (%r12)
nop
nop
nop
nop
nop
inc %rsi
mov (%r12), %r10w
nop
xor $22511, %rsi

// Faulty Load
lea addresses_A+0x5813, %r9
inc %r10
movb (%r9), %bl
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'52': 41}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
