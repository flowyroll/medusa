.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a53c, %rsi
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
xor $43188, %r14
lea addresses_UC_ht+0x15dac, %rsi
lea addresses_WT_ht+0x1f3c, %rdi
nop
xor $45760, %rax
mov $81, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_D_ht+0x1e73c, %rcx
nop
nop
nop
nop
nop
add $22745, %r9
movb $0x61, (%rcx)
nop
nop
nop
xor $57752, %rax
lea addresses_A_ht+0x118d7, %rsi
lea addresses_WC_ht+0x7832, %rdi
and %rax, %rax
mov $15, %rcx
rep movsw
xor %rax, %rax
lea addresses_UC_ht+0x1716c, %rsi
lea addresses_WT_ht+0x1926c, %rdi
nop
nop
nop
nop
xor $3662, %r10
mov $45, %rcx
rep movsw
nop
nop
nop
nop
add $16406, %rdi
lea addresses_A_ht+0xcdcc, %rcx
nop
nop
nop
nop
and $6332, %rsi
mov (%rcx), %eax
and %rdi, %rdi
lea addresses_A_ht+0x564c, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%rdi), %cx
nop
sub %r10, %r10
lea addresses_D_ht+0x6cbc, %r11
sub $6092, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%r11)
nop
nop
cmp $18961, %rdi
lea addresses_normal_ht+0xe73c, %rsi
lea addresses_normal_ht+0x1043c, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $123, %rcx
rep movsw
nop
nop
nop
cmp $32386, %rdi
lea addresses_UC_ht+0xe03c, %r10
nop
nop
nop
add %rsi, %rsi
mov (%r10), %r9
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x10d65, %rax
nop
and %r10, %r10
mov (%rax), %r9w
nop
nop
nop
nop
xor $59978, %rax
lea addresses_normal_ht+0x19a7e, %rsi
lea addresses_A_ht+0x1117c, %rdi
nop
sub %rax, %rax
mov $13, %rcx
rep movsl
nop
sub %r9, %r9
lea addresses_UC_ht+0xd179, %rsi
lea addresses_D_ht+0x12ed4, %rdi
nop
xor %r10, %r10
mov $65, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x9226, %r14
nop
nop
nop
sub %r9, %r9
movb $0x61, (%r14)
and %r9, %r9
lea addresses_A_ht+0xb532, %r10
sub %rcx, %rcx
movb $0x61, (%r10)
nop
nop
nop
nop
cmp $63562, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0xf8bc, %r8
nop
nop
nop
xor $6308, %rdx
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0x15f1c, %r10
nop
inc %rax
movb $0x51, (%r10)
nop
nop
nop
nop
inc %rcx

// REPMOV
lea addresses_WT+0x37bc, %rsi
lea addresses_UC+0xcd3c, %rdi
clflush (%rsi)
and $64472, %r8
mov $41, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WC+0x6b3c, %rdx
nop
nop
nop
nop
nop
and $55501, %r8
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
nop
add $28777, %rsi

// Faulty Load
lea addresses_UC+0xcd3c, %rax
nop
nop
nop
nop
nop
add $175, %r10
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
