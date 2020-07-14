.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x13b8c, %rdi
nop
nop
nop
and $11599, %r9
mov (%rdi), %r14
nop
nop
nop
dec %rax
lea addresses_D_ht+0x70c, %rdx
nop
xor %r11, %r11
movl $0x61626364, (%rdx)
sub %rax, %rax
lea addresses_WC_ht+0x15fbc, %rsi
lea addresses_D_ht+0x136bc, %rdi
nop
nop
nop
and $4148, %rax
mov $86, %rcx
rep movsb
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0xd13c, %rsi
lea addresses_D_ht+0x537c, %rdi
nop
nop
xor $44928, %rax
mov $70, %rcx
rep movsb
nop
cmp $27814, %r14
lea addresses_WT_ht+0x15fbc, %rsi
lea addresses_WT_ht+0x10bc, %rdi
xor $21243, %r9
mov $11, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x6dbc, %rsi
lea addresses_WT_ht+0xce4, %rdi
nop
sub $49400, %r11
mov $101, %rcx
rep movsq
nop
nop
sub $64916, %rdi
lea addresses_WC_ht+0x7ebc, %rdi
inc %r9
mov (%rdi), %r14d
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x2ebc, %rsi
lea addresses_D_ht+0x1dcbc, %rdi
nop
sub $38702, %rax
mov $41, %rcx
rep movsw
nop
add %rdi, %rdi
lea addresses_UC_ht+0x67bc, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub %r11, %r11
movups (%r9), %xmm6
vpextrq $0, %xmm6, %rdi
add $37733, %rdx
lea addresses_UC_ht+0xb00c, %rdx
nop
nop
nop
nop
add $44500, %rsi
movb $0x61, (%rdx)
nop
nop
add $63099, %rdx
lea addresses_A_ht+0xeebc, %rsi
lea addresses_WT_ht+0x1cd34, %rdi
clflush (%rdi)
nop
nop
nop
inc %r9
mov $5, %rcx
rep movsq
nop
add $59796, %rdi
lea addresses_UC_ht+0x176bc, %rsi
inc %rdx
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
nop
nop
and $20252, %r14
lea addresses_WC_ht+0xcebc, %rsi
lea addresses_WT_ht+0x156bc, %rdi
nop
nop
nop
nop
dec %r9
mov $55, %rcx
rep movsb
and $45432, %rsi
lea addresses_D_ht+0x17ffc, %r14
nop
nop
nop
nop
xor $30548, %rsi
mov (%r14), %r11
nop
xor $21691, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0xe48c, %r9
nop
nop
nop
nop
sub %r13, %r13
movb $0x51, (%r9)
nop
nop
sub %r14, %r14

// Store
mov $0x284, %rdi
nop
nop
nop
cmp %r13, %r13
movw $0x5152, (%rdi)
add $51347, %r10

// Store
lea addresses_PSE+0x1ebc, %r13
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x51, (%r13)
nop
xor %r9, %r9

// Store
lea addresses_US+0x1c412, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movaps %xmm0, (%rcx)
sub %r14, %r14

// Load
lea addresses_UC+0x1a6bc, %r10
nop
nop
nop
nop
add $53908, %r13
mov (%r10), %r9w
nop
nop
nop
nop
add $17151, %r14

// Store
lea addresses_US+0x1e6bc, %r9
nop
nop
nop
sub %r10, %r10
movl $0x51525354, (%r9)
nop
nop
inc %r13

// Store
lea addresses_UC+0x1febc, %r9
clflush (%r9)
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r9)
sub $62107, %rsi

// Faulty Load
lea addresses_US+0x1e6bc, %r13
sub %r10, %r10
movups (%r13), %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'54': 330}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
