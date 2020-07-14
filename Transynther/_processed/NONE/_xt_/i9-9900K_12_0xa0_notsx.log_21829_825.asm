.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e959, %rsi
lea addresses_UC_ht+0x1eced, %rdi
nop
nop
nop
nop
nop
cmp $23397, %r9
mov $78, %rcx
rep movsl
nop
nop
nop
sub $31503, %r10
lea addresses_normal_ht+0x1bad9, %r14
nop
sub $37087, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
add %rdi, %rdi
lea addresses_normal_ht+0x12559, %rsi
xor %r14, %r14
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
nop
and $1161, %r14
lea addresses_WC_ht+0x6b9d, %r12
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %r12
vmovaps %ymm2, (%r12)
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x1b0e9, %rsi
lea addresses_WT_ht+0x45f9, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $74, %rcx
rep movsw
nop
nop
nop
add $15631, %r9
lea addresses_A_ht+0x112d9, %r14
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x20e1, %r11
nop
nop
nop
nop
nop
and $32823, %r14
movb (%r11), %r12b
nop
nop
nop
add $43767, %rsi
lea addresses_normal_ht+0x1cd59, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $18497, %rcx
movl $0x61626364, (%r10)
dec %r14
lea addresses_UC_ht+0xe959, %r9
nop
nop
mfence
movb $0x61, (%r9)
xor %r10, %r10
lea addresses_D_ht+0x1e259, %r9
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb (%r9), %r12b
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x1b259, %rsi
lea addresses_A_ht+0x295, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r10, %r10
mov $36, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $41308, %r12
lea addresses_WC_ht+0x6759, %rsi
lea addresses_normal_ht+0x9cd9, %rdi
sub $12907, %r9
mov $54, %rcx
rep movsl
nop
nop
add $32694, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x5759, %r9
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r9)
cmp $19920, %r9

// Store
lea addresses_PSE+0x8aa5, %r9
nop
nop
nop
add $37910, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r9)
nop
inc %rax

// Store
lea addresses_D+0x7559, %r13
cmp $5525, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r13)
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_PSE+0xd359, %rsi
lea addresses_WC+0x6717, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $58, %rcx
rep movsq
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x15459, %r13
and $32196, %rax
movl $0x51525354, (%r13)
nop
nop
nop
sub $25844, %r15

// Store
lea addresses_D+0x70b9, %r13
nop
nop
nop
nop
nop
sub $27353, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
nop
cmp $2784, %rax

// Faulty Load
lea addresses_WT+0xe159, %r15
nop
cmp %rsi, %rsi
mov (%r15), %di
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
