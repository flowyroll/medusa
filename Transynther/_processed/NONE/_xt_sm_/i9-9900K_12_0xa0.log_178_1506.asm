.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x15ea7, %rcx
nop
nop
xor $8458, %rbp
mov (%rcx), %r11d
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0xa73f, %r8
nop
nop
xor $14367, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
cmp $53546, %r11
lea addresses_WC_ht+0x9d27, %r14
add %rcx, %rcx
movb (%r14), %r8b
nop
nop
inc %rcx
lea addresses_normal_ht+0xf827, %rsi
lea addresses_D_ht+0x5d27, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $116, %rcx
rep movsw
nop
nop
nop
and $47573, %rdi
lea addresses_A_ht+0xd0a7, %rcx
add %r8, %r8
movl $0x61626364, (%rcx)
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x1dba7, %rsi
lea addresses_WT_ht+0x127eb, %rdi
clflush (%rdi)
lfence
mov $74, %rcx
rep movsl
xor $33191, %r11
lea addresses_D_ht+0x1c227, %rsi
nop
and $35567, %rcx
mov (%rsi), %rdi
nop
dec %r11
lea addresses_D_ht+0x138a7, %rsi
lea addresses_UC_ht+0xa527, %rdi
clflush (%rdi)
nop
sub %rdx, %rdx
mov $61, %rcx
rep movsq
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x1527, %rsi
lea addresses_D_ht+0x5167, %rdi
nop
nop
nop
nop
and $32512, %rbp
mov $84, %rcx
rep movsl
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x14e97, %r9
clflush (%r9)
nop
nop
nop
add $56154, %r8
movw $0x5152, (%r9)
and %rsi, %rsi

// Store
lea addresses_WC+0x1c50b, %rdx
cmp %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
sub $31666, %r9

// Store
lea addresses_RW+0x17527, %rbx
clflush (%rbx)
and %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rbx)
nop
dec %rdx

// Store
lea addresses_UC+0x10127, %r14
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r14)
nop
nop
sub %rax, %rax

// Store
lea addresses_US+0xad27, %rax
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
add $42618, %r9

// Load
lea addresses_RW+0xbf10, %rbx
nop
nop
nop
nop
and %r9, %r9
mov (%rbx), %dx
nop
nop
nop
sub $24451, %r8

// Store
lea addresses_RW+0x17527, %r9
cmp %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_UC+0x1cd27, %rdx
clflush (%rdx)
nop
nop
nop
nop
add $15436, %r8
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
dec %r14

// Faulty Load
lea addresses_RW+0x17527, %r14
nop
nop
nop
nop
cmp %r9, %r9
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'58': 178}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
