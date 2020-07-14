.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x506a, %rbx
clflush (%rbx)
cmp %rdi, %rdi
mov (%rbx), %bp
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x59ea, %r14
nop
cmp %r10, %r10
mov (%r14), %rbx
nop
nop
and $63883, %r14
lea addresses_WC_ht+0xf1ea, %r10
nop
nop
nop
nop
xor %r12, %r12
mov (%r10), %bx
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x8afa, %r14
nop
nop
nop
nop
sub %r12, %r12
mov (%r14), %edi
nop
nop
dec %rbp
lea addresses_WC_ht+0x1c2aa, %r14
nop
nop
dec %r12
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0xd0ea, %rsi
lea addresses_A_ht+0x9dea, %rdi
clflush (%rdi)
and %rbp, %rbp
mov $122, %rcx
rep movsl
nop
nop
cmp $60885, %rsi
lea addresses_D_ht+0x1fb2, %rsi
lea addresses_WT_ht+0x3292, %rdi
cmp %r12, %r12
mov $105, %rcx
rep movsw
nop
nop
nop
dec %r12
lea addresses_A_ht+0x74ef, %rbx
xor $24987, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rbx)
nop
nop
sub $1352, %rdi
lea addresses_WT_ht+0xfdea, %rbx
nop
nop
nop
nop
sub $36303, %rsi
movb $0x61, (%rbx)
and $21332, %rbp
lea addresses_UC_ht+0xc1ea, %rbp
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%rbp)
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x10fea, %rdi
nop
nop
and $53057, %rdx
mov (%rdi), %r11w
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_WC+0xfeaa, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rsi)
nop
cmp $37763, %rdi

// Store
lea addresses_RW+0x144a2, %r11
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r11)
nop
add $19598, %r11

// Store
lea addresses_UC+0x6d25, %r11
nop
nop
add %r12, %r12
movl $0x51525354, (%r11)
xor %rdx, %rdx

// Store
lea addresses_D+0x1783e, %rsi
nop
nop
nop
nop
nop
sub $40662, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movaps %xmm3, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
nop
nop
and %r12, %r12

// Store
lea addresses_A+0xbdea, %rdx
nop
sub $52250, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
and $44891, %rdx

// Store
mov $0xb3e, %rsi
add %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdx
nop
nop
nop
nop
cmp $36176, %rax

// Load
lea addresses_WT+0x11ea, %r11
nop
nop
nop
nop
sub $29713, %r12
movb (%r11), %al
nop
nop
nop
nop
sub $20008, %rax

// Load
lea addresses_WC+0x123da, %r11
nop
xor %rdx, %rdx
mov (%r11), %ax
cmp $50824, %rsi

// Store
lea addresses_A+0x1d60a, %rdx
nop
nop
sub $41874, %r11
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
add $23403, %rax

// Store
lea addresses_RW+0x7dba, %rdx
xor %rax, %rax
movl $0x51525354, (%rdx)
nop
xor %r11, %r11

// Faulty Load
lea addresses_WT+0x11ea, %rdi
sub $61773, %r13
mov (%rdi), %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
