.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e110, %rsi
lea addresses_normal_ht+0x4080, %rdi
nop
nop
nop
lfence
mov $28, %rcx
rep movsl
nop
nop
nop
inc %r12
lea addresses_normal_ht+0xd000, %r9
nop
nop
nop
nop
nop
sub $47077, %rax
mov (%r9), %r12
nop
add %rax, %rax
lea addresses_A_ht+0x1bbb0, %r10
nop
nop
nop
nop
nop
dec %rax
mov (%r10), %di
sub %rcx, %rcx
lea addresses_WC_ht+0x11194, %rsi
lea addresses_WC_ht+0x4110, %rdi
inc %r14
mov $36, %rcx
rep movsw
xor $21877, %rax
lea addresses_D_ht+0x4110, %rsi
lea addresses_UC_ht+0x15cef, %rdi
nop
nop
nop
nop
xor $56825, %r14
mov $104, %rcx
rep movsl
nop
nop
nop
nop
cmp $3354, %rax
lea addresses_UC_ht+0x14e70, %rsi
lea addresses_A_ht+0x129d8, %rdi
nop
nop
cmp %r14, %r14
mov $127, %rcx
rep movsl
nop
cmp %rax, %rax
lea addresses_D_ht+0x1aa90, %rcx
sub $8774, %r14
mov (%rcx), %di
nop
nop
nop
nop
nop
sub $39777, %r10
lea addresses_A_ht+0xe510, %rsi
lea addresses_A_ht+0xd8e0, %rdi
nop
nop
nop
nop
nop
sub $46325, %r9
mov $4, %rcx
rep movsq
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x490, %rsi
lea addresses_normal_ht+0x15390, %rdi
nop
nop
nop
sub $36081, %r9
mov $77, %rcx
rep movsb
nop
nop
nop
nop
nop
add $16324, %rsi
lea addresses_A_ht+0x5530, %rsi
lea addresses_WT_ht+0x1dc10, %rdi
nop
and $51361, %r14
mov $87, %rcx
rep movsb
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x17d10, %r10
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%r10), %cx
nop
inc %r12
lea addresses_WT_ht+0xa290, %r12
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r12), %ax
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_normal+0x16910, %r9
nop
nop
nop
nop
and %r12, %r12
mov (%r9), %r13
nop
nop
dec %r9

// Load
lea addresses_normal+0xc00b, %rdx
clflush (%rdx)
and %rbp, %rbp
mov (%rdx), %rsi
nop
nop
nop
sub $45141, %r9

// Store
lea addresses_UC+0x10910, %rbx
nop
nop
nop
nop
add $44930, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
nop
add $12721, %r9

// Store
lea addresses_D+0x9119, %r9
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_D+0x7920, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub $23598, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r9)
nop
and $13850, %rsi

// Faulty Load
lea addresses_normal+0x16910, %r13
and %r12, %r12
movb (%r13), %bl
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'34': 11359}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
