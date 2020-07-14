.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb71b, %r9
nop
nop
nop
nop
sub %r13, %r13
movb (%r9), %bl
nop
nop
nop
nop
nop
cmp $57971, %rcx
lea addresses_WT_ht+0x157e3, %r11
sub $25948, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x96b1, %r13
nop
nop
nop
nop
nop
xor $5482, %r15
movb $0x61, (%r13)
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x18ccb, %r15
nop
xor %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r15)
nop
nop
inc %r11
lea addresses_WC_ht+0x9173, %r11
nop
nop
dec %rbp
movw $0x6162, (%r11)
nop
nop
nop
add $5843, %rcx
lea addresses_A_ht+0x4dc3, %rsi
lea addresses_normal_ht+0x11a49, %rdi
nop
nop
nop
nop
sub $11813, %r15
mov $55, %rcx
rep movsl
dec %rbp
lea addresses_normal_ht+0xa773, %rsi
lea addresses_UC_ht+0x1d73, %rdi
nop
nop
nop
and %r9, %r9
mov $6, %rcx
rep movsb
xor %rbx, %rbx
lea addresses_A_ht+0xae53, %r15
nop
nop
and %rsi, %rsi
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x152da, %rsi
nop
nop
nop
nop
nop
inc %rbx
mov (%rsi), %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rdx
push %rsi

// Load
lea addresses_PSE+0x7bb1, %r14
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r14), %edx
nop
nop
xor $46711, %rsi

// Store
lea addresses_WT+0xf173, %rax
add %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%rax)
nop
nop
and $9274, %rsi

// Faulty Load
mov $0x5aa0c30000000973, %r14
clflush (%r14)
nop
nop
nop
cmp %rsi, %rsi
movups (%r14), %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'44': 15433, '45': 6396}
45 44 44 45 44 45 45 44 44 45 44 45 44 45 44 44 44 45 44 44 44 45 44 45 44 44 45 45 45 44 44 44 45 44 44 44 44 45 45 45 44 44 44 44 44 45 44 44 44 44 44 45 45 44 44 44 45 44 44 44 45 44 44 45 44 44 44 45 44 45 44 44 45 44 44 44 44 45 44 44 45 44 44 44 45 45 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 45 45 44 45 44 45 45 44 44 44 45 44 45 44 44 45 44 44 44 44 44 45 44 44 45 45 44 45 45 44 44 45 45 45 44 44 45 44 44 45 45 45 44 45 45 44 45 45 44 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 45 44 44 45 44 44 45 44 44 44 45 44 44 44 45 45 45 44 45 44 44 44 45 44 45 44 45 44 44 44 45 45 45 45 44 45 45 44 44 45 45 45 44 44 44 44 44 44 45 45 44 44 45 44 44 44 44 44 44 45 44 44 45 44 44 45 44 45 45 44 44 44 44 44 44 45 44 45 45 44 44 44 44 45 44 44 44 45 44 45 44 44 44 44 44 45 44 44 45 44 44 44 45 44 45 44 45 44 44 44 44 45 45 45 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 45 44 44 45 44 44 44 45 45 44 44 45 44 44 44 44 45 44 44 44 44 45 45 44 44 44 44 44 44 44 45 45 45 45 45 44 44 44 44 44 44 45 45 44 44 44 44 44 45 44 45 44 44 45 44 44 45 44 44 44 45 44 44 44 45 44 44 44 44 45 44 44 44 44 45 45 44 45 44 45 44 44 45 45 45 44 44 44 44 44 44 44 44 45 45 44 44 44 45 44 45 44 44 44 45 44 45 45 45 45 44 44 45 44 45 44 44 44 45 45 44 44 44 44 45 44 44 44 45 44 44 45 44 44 44 45 44 44 44 45 45 44 44 45 44 44 44 45 44 45 44 44 45 44 45 44 44 45 45 45 44 45 44 44 45 44 44 44 45 44 45 45 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 45 44 44 44 44 44 45 45 44 44 45 45 44 44 45 45 44 44 45 44 44 44 44 44 44 45 44 45 44 44 44 45 45 44 44 45 44 44 44 45 44 44 44 45 44 45 44 44 44 45 44 45 44 45 44 45 44 44 44 45 45 45 44 45 45 44 44 45 44 45 44 44 45 44 44 45 45 45 45 44 45 44 44 44 45 44 44 45 44 45 44 45 44 44 45 45 44 45 44 45 45 45 45 44 45 44 44 45 45 44 44 45 45 44 45 44 45 44 44 45 44 45 44 44 45 44 44 45 45 44 44 44 45 44 44 44 44 44 44 45 45 44 44 44 45 44 44 45 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 45 44 45 44 44 44 44 44 44 44 45 44 45 44 45 44 44 44 45 44 44 45 44 45 44 45 44 45 44 44 44 45 44 45 44 44 44 45 44 44 44 45 44 45 44 44 45 45 44 44 44 44 44 45 44 45 44 45 44 44 44 45 44 45 45 44 44 45 44 45 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 45 44 45 44 44 44 45 44 44 44 45 45 45 44 44 44 44 44 44 45 45 45 44 45 45 45 44 45 45 44 44 44 44 44 45 45 45 44 44 44 45 45 44 45 45 44 44 45 44 45 44 45 44 44 44 45 45 44 44 44 45 44 45 44 44 44 45 44 44 44 45 45 44 45 44 44 44 44 44 44 45 45 45 44 45 44 44 44 45 44 44 44 44 45 45 45 45 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 45 44 44 45 45 44 44 44 44 44 44 45 44 44 44 45 45 44 44 44 45 44 45 44 45 44 44 45 44 44 44 44 44 45 44 44 45 45 44 44 44 44 44 44 44 44 45 44 45 45 44 44 44 45 44 44 44 45 44 45 45 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 45 44 44 45 44 44 44 44 45 44 44 45 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44
*/
