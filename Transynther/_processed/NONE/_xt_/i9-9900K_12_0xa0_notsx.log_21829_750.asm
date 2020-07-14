.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xede8, %rsi
lea addresses_UC_ht+0x1bb68, %rdi
nop
nop
nop
sub %rax, %rax
mov $38, %rcx
rep movsb
and %r14, %r14
lea addresses_A_ht+0xd168, %rsi
lea addresses_WT_ht+0xad7c, %rdi
nop
nop
nop
nop
nop
add $54169, %rax
mov $118, %rcx
rep movsb
nop
xor %rax, %rax
lea addresses_A_ht+0x77e8, %rdi
nop
cmp $3293, %rdx
mov (%rdi), %eax
nop
nop
nop
and $16200, %rdx
lea addresses_A_ht+0x19a68, %rsi
nop
add $13445, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xc4d8, %rax
cmp %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rax)
sub $11778, %rsi
lea addresses_A_ht+0xaca8, %r14
nop
nop
nop
nop
and %rdx, %rdx
mov (%r14), %edi
xor %rdi, %rdi
lea addresses_WC_ht+0x9d68, %r12
clflush (%r12)
nop
nop
nop
nop
nop
sub $32405, %r14
movw $0x6162, (%r12)
nop
nop
nop
add $43313, %r14
lea addresses_normal_ht+0x7668, %rsi
lea addresses_WC_ht+0x168, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r12, %r12
mov $23, %rcx
rep movsq
nop
sub $21813, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_UC+0xbce8, %r11
clflush (%r11)
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WC+0x1a968, %r12
nop
and $63306, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
cmp $11210, %r11

// Load
lea addresses_WT+0x8f8, %rbx
nop
nop
nop
nop
cmp $21681, %rcx
movb (%rbx), %al
nop
cmp %rax, %rax

// Store
lea addresses_WC+0x17168, %r11
nop
nop
nop
nop
inc %rbp
movl $0x51525354, (%r11)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_UC+0x1eea8, %rax
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rax)
cmp $34467, %rax

// Load
lea addresses_WT+0x1d55d, %rax
clflush (%rax)
nop
cmp %rcx, %rcx
mov (%rax), %rbp
nop
nop
dec %rcx

// Store
lea addresses_UC+0xd1e8, %rcx
nop
nop
nop
nop
and $62640, %rbp
movb $0x51, (%rcx)
nop
nop
and %r8, %r8

// Store
lea addresses_D+0x3568, %r12
nop
nop
nop
nop
nop
sub $18169, %rcx
movw $0x5152, (%r12)
add $50021, %r8

// Load
lea addresses_WT+0x6020, %rcx
nop
nop
nop
nop
sub $28550, %r11
mov (%rcx), %eax
nop
nop
nop
nop
and $14486, %r8

// Store
lea addresses_normal+0xc0d0, %rcx
nop
nop
sub $60941, %rbx
movb $0x51, (%rcx)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
mov $0x5be, %rax
nop
nop
dec %r12
mov $0x5152535455565758, %r11
movq %r11, (%rax)

// Exception!!!
nop
mov (0), %r8
nop
nop
nop
nop
nop
cmp $8340, %rbx

// Load
lea addresses_RW+0xb168, %r8
nop
nop
nop
nop
nop
sub %rbp, %rbp
movaps (%r8), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_RW+0x1d968, %rbp
nop
nop
and $35660, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_PSE+0x12de8, %rbp
nop
nop
nop
add %rax, %rax
movb (%rbp), %r12b
nop
nop
nop
xor $28417, %r11

// Store
lea addresses_A+0x9430, %r12
nop
nop
nop
nop
cmp $48427, %rcx
movl $0x51525354, (%r12)
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_RW+0xb168, %rax
nop
nop
nop
nop
add %rbp, %rbp
mov (%rax), %ecx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
