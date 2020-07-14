.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x52eb, %rsi
lea addresses_A_ht+0x13fab, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $7, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $55472, %r14
lea addresses_normal_ht+0x1defb, %rsi
lea addresses_D_ht+0x1b9fb, %rdi
clflush (%rsi)
nop
cmp $17251, %rax
mov $79, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xd8ab, %r14
nop
nop
and $23395, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r14)
nop
nop
sub $58673, %r14
lea addresses_normal_ht+0xefab, %rcx
nop
cmp %r13, %r13
mov (%rcx), %rsi
nop
cmp $58124, %rdx
lea addresses_D_ht+0x174ab, %rsi
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rsi)
nop
xor $25435, %r13
lea addresses_WT_ht+0xcfab, %rsi
lea addresses_normal_ht+0x168b7, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $64, %rcx
rep movsw
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x4a2b, %rax
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
nop
sub $47460, %r15

// Load
lea addresses_WC+0x1c7ab, %rdx
nop
nop
nop
nop
nop
add $14028, %rsi
mov (%rdx), %r15w
nop
nop
nop
inc %rsi

// Store
lea addresses_PSE+0x18f6b, %rbx
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rbx)
nop
add $52607, %rsi

// Store
lea addresses_normal+0xf4ab, %rdi
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_WC+0x1c7ab, %rdi
clflush (%rdi)
dec %r15
movl $0x51525354, (%rdi)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WC+0x1c7ab, %rdi
nop
xor $49991, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
nop
nop
xor %rax, %rax

// REPMOV
lea addresses_PSE+0xf1ab, %rsi
lea addresses_WC+0x191ab, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $9325, %rax
mov $99, %rcx
rep movsb
nop
nop
nop
cmp $36322, %rsi

// REPMOV
lea addresses_WC+0x1c7ab, %rsi
lea addresses_WC+0x1c7ab, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rax, %rax
mov $125, %rcx
rep movsq
nop
nop
nop
sub $41072, %rdx

// Store
lea addresses_UC+0x47ab, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0x86ab, %rdx
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
inc %rax

// Store
lea addresses_PSE+0x2793, %rcx
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rcx)
and $61521, %r15

// Faulty Load
lea addresses_WC+0x1c7ab, %rcx
cmp %r15, %r15
movb (%rcx), %dl
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
