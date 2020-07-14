.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x15152, %rcx
sub %rbp, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rcx)
nop
cmp %rax, %rax
lea addresses_A_ht+0xda52, %rsi
lea addresses_D_ht+0x9ed2, %rdi
nop
nop
nop
sub $64198, %r10
mov $110, %rcx
rep movsq
and %r9, %r9
lea addresses_normal_ht+0x14c52, %rax
nop
nop
nop
nop
add %rcx, %rcx
mov (%rax), %rdi
nop
nop
cmp $46366, %rcx
lea addresses_normal_ht+0xccd2, %rsi
clflush (%rsi)
nop
nop
inc %rbp
mov (%rsi), %r10
nop
xor %rax, %rax
lea addresses_A_ht+0xa752, %rcx
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rcx), %edi
nop
cmp $17699, %rdi
lea addresses_WC_ht+0xf552, %rsi
lea addresses_A_ht+0x19d52, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $110, %rcx
rep movsw
nop
nop
and $52510, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x19592, %rax
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rax)
nop
nop
add %r11, %r11

// Store
mov $0x5b2, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp $23047, %r8
movw $0x5152, (%rax)
nop
nop
nop
add $61481, %rbx

// Store
lea addresses_US+0x7b62, %rax
clflush (%rax)
nop
nop
add %r8, %r8
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_WT+0x1cd52, %rbx
nop
nop
sub $1458, %r12
mov (%rbx), %eax
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x2a894e00000004ae, %r8
nop
nop
nop
nop
nop
add $59424, %rdx
movw $0x5152, (%r8)
nop
sub %r12, %r12

// Store
lea addresses_WT+0x206c, %rsi
nop
nop
nop
nop
add $9820, %r8
movl $0x51525354, (%rsi)
nop
nop
nop
xor $61192, %rdx

// Faulty Load
lea addresses_WC+0x5152, %rsi
clflush (%rsi)
nop
nop
nop
add %r11, %r11
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'48': 11582, '00': 8750, '45': 1497}
48 00 48 48 48 00 00 48 48 00 00 00 00 00 00 48 00 48 48 00 00 00 48 00 48 45 48 48 48 48 48 00 48 48 48 00 00 45 00 48 48 48 00 00 45 00 00 48 00 48 48 45 48 48 48 00 00 00 48 00 00 48 48 00 48 00 45 00 48 00 00 48 48 48 48 48 48 48 48 48 00 48 00 00 00 00 48 48 00 00 48 48 48 48 48 00 48 48 00 48 48 00 00 00 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 45 00 00 00 48 45 48 00 48 45 00 48 00 48 00 48 48 48 48 45 00 00 48 48 48 00 48 48 00 00 00 48 48 00 48 48 48 00 48 00 48 00 45 48 00 48 48 48 00 48 00 48 48 48 45 48 00 00 00 48 48 48 00 00 48 48 00 48 48 00 48 00 48 00 48 48 00 48 48 48 00 00 48 48 00 00 48 48 48 00 00 48 00 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 00 00 48 45 48 45 48 48 48 48 48 45 48 48 48 00 45 48 00 48 00 00 48 48 45 48 48 48 00 48 00 48 48 48 00 48 48 00 48 45 48 48 48 48 00 48 48 48 48 48 48 00 45 00 48 48 48 48 48 00 00 48 45 48 48 48 48 48 48 00 48 48 48 48 00 00 00 00 48 45 00 48 00 00 00 48 48 48 48 00 00 48 48 00 00 48 45 48 48 48 48 00 48 48 45 48 00 00 48 48 00 00 48 48 00 45 00 00 48 00 48 00 48 00 00 00 00 00 48 00 48 00 48 00 48 45 48 00 00 48 00 48 00 45 00 00 48 48 00 48 48 48 45 48 45 48 48 48 48 00 48 48 00 48 45 48 00 48 48 00 00 00 48 45 48 00 48 00 48 00 45 48 48 48 48 48 48 45 00 00 00 48 48 48 48 48 00 00 00 48 00 00 00 48 00 48 48 48 48 00 48 48 00 48 45 00 00 48 48 00 00 00 00 00 00 00 48 48 48 48 00 00 00 48 48 00 48 00 48 48 48 48 48 48 00 00 00 48 00 48 48 48 00 00 00 00 00 48 45 00 48 00 00 00 45 00 00 48 48 48 00 48 00 48 00 48 48 00 00 48 48 45 00 48 00 00 00 48 48 48 48 00 00 00 00 48 00 00 48 48 48 48 00 48 48 00 48 48 48 48 45 45 00 00 00 00 00 45 48 48 00 00 00 48 00 48 48 48 00 48 00 00 48 00 48 48 00 48 48 48 45 00 00 00 00 00 45 00 00 48 00 00 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 00 45 48 45 48 48 48 45 00 00 48 48 48 48 48 48 48 00 00 48 48 00 48 00 00 00 48 48 48 00 00 48 48 00 00 00 48 48 45 48 45 48 00 00 48 48 48 00 48 00 48 00 00 00 00 00 00 45 00 48 48 00 00 48 48 48 00 48 00 48 48 48 00 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 45 00 00 45 48 48 48 48 45 00 00 48 48 48 00 00 48 00 48 00 00 00 48 00 00 48 48 48 00 48 00 48 48 48 00 00 48 00 48 48 00 00 48 00 00 48 00 48 48 48 48 48 00 00 48 48 00 48 48 00 00 00 00 00 48 48 48 48 48 48 48 48 00 00 00 00 48 48 00 48 00 48 45 00 48 48 00 00 00 48 48 48 00 48 48 45 48 48 48 48 48 00 48 00 45 48 45 48 00 48 00 00 00 48 48 48 48 45 48 48 48 00 48 45 48 00 00 48 00 48 00 48 00 48 45 48 00 48 48 48 48 48 48 00 00 48 00 48 48 00 48 00 48 45 00 48 48 48 48 45 48 48 00 00 48 00 00 00 00 48 48 48 48 00 45 00 00 00 48 48 48 48 00 48 48 00 00 48 48 00 48 00 48 45 48 48 00 00 00 48 48 00 45 45 00 00 00 00 48 48 00 48 45 00 48 48 00 48 00 48 48 00 48 48 00 45 48 48 00 00 00 48 48 48 00 00 00 45 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 45 00 48 48 48 00 48 48 48 00 00 00 48 00 48 48 48 48 00 48 48 45 00 48 00 48 48 45 48 00 48 45 00 48 00 48 48 48 45 45 48 48 00 45 48 48 00 48 48 00 48 48
*/
